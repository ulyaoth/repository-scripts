#!/bin/bash
# Argument = -h (shows the help information)
# Argument = -i (Instance type)
# Argument = -o (Owner ID)
# Argument = -p (package name .i.e nginx)
# Argument = -u (ulyaoth package name .i.e ulyaoth-nginx)

usage()
{
cat << EOF
usage: $0 options
OPTIONS:
   -h  Shows this help information
   -i  Instance Type
   -o  Owner ID
   -p  Package Name
   -u  Ulyaoth Package Name
EOF
}

function getamiid ()
{
  imageid=`aws ec2 describe-images --owners $ownersid --filters "Name=name,Values=rpmbuild-scientificlinux6-*" --query Images[].ImageId --output text`
}

function waitforstate ()
{
while :
do
   state=$(aws ec2 describe-instances --filters "Name=image-id,Values=$imageid" "Name=instance-state-name,Values=pending,running,shutting-down,stopping,stopped" --query 'Reservations[].Instances[].State[].Name[]' --output text)
   /bin/sleep 5
   if [[ $state == "running" ]]
   then
	 break
   fi
done
}


# Builds the rpm
function build-package ()
{
  /bin/sleep 30
  /usr/bin/ssh -t -oStrictHostKeyChecking=no -i rpmbuild-old-openssl.pem ulyaoth@$ip "wget https://raw.githubusercontent.com/ulyaoth/repository/master/$ulyaothpackage/build-$package.sh ; chmod +x build-$package.sh ; ./build-$package.sh" >> /dev/null 2>&1
}

# scp the package to local machine
function scp-package ()
{
  scp -oStrictHostKeyChecking=no -i rpmbuild-old-openssl.pem ulyaoth@$ip:/home/ulyaoth/rpmbuild/RPMS/x86_64/*debug*.rpm /Users/sbagmeijer/rpmbuild/rpms/scientificlinux/6/x86_64/debug/ >> /dev/null 2>&1
  /usr/bin/ssh -t -oStrictHostKeyChecking=no -i rpmbuild.pem ulyaoth@$ip "rm -rf /home/ulyaoth/rpmbuild/RPMS/x86_64/*debug*.rpm && rm -rf /home/ulyaoth/rpmbuild/RPMS/x86_64/*debuginfo*.rpm" >> /dev/null 2>&1
  scp -oStrictHostKeyChecking=no -i rpmbuild-old-openssl.pem ulyaoth@$ip:/home/ulyaoth/rpmbuild/RPMS/x86_64/*.rpm /Users/sbagmeijer/rpmbuild/rpms/scientificlinux/6/x86_64/os/ >> /dev/null 2>&1
  scp -oStrictHostKeyChecking=no -i rpmbuild-old-openssl.pem ulyaoth@$ip:/home/ulyaoth/rpmbuild/RPMS/noarch/*.rpm /Users/sbagmeijer/rpmbuild/rpms/scientificlinux/6/x86_64/os/ >> /dev/null 2>&1
  scp -oStrictHostKeyChecking=no -i rpmbuild-old-openssl.pem ulyaoth@$ip:/home/ulyaoth/rpmbuild/SRPMS/*.rpm /Users/sbagmeijer/rpmbuild/rpms/scientificlinux/6/source/ >> /dev/null 2>&1
}


# Gets the IP of the EC2 instance
getip ()
{
	ip=$(aws ec2 describe-instances --filters "Name=image-id,Values=$imageid" "Name=instance-state-name,Values=pending,running" --query 'Reservations[].Instances[].PublicIpAddress[]' --output text)
}

# Start the EC2 instance
function start ()
{
    # Get the ami id
    getamiid

    # Start the instance
	aws ec2 run-instances --image-id $imageid --count 1 --instance-type $instance_type --key-name rpmbuild-old-openssl --security-groups rpmbuild >> /dev/null 2>&1

    # waiting for instance to be running
    waitforstate
    
    # Sleep 90 seconds
    /bin/sleep 90
    
    # Get EC2 public IP
    getip
    
    # Build the rpm package
    build-package
    
    # scp package to local machine
    scp-package
    
    # terminate ec2 instance
    terminate
    
}

# Stop the EC2 Instance
function terminate ()
{
	instance=$(aws ec2 describe-instances --filters "Name=image-id,Values=$imageid" "Name=instance-state-name,Values=pending,running,shutting-down,stopping,stopped" --query 'Reservations[].Instances[].InstanceId[]' --output text)

	aws ec2 terminate-instances --instance-ids $instance >> /dev/null 2>&1
	exit 0
}


# Set required variables.
instance_type=""
package=""
ulyaothpackage=""

while getopts h:i:o:p:u: opt; do
case $opt in
h)
  usage
;;
i)
  instance_type=$OPTARG
;;
o)
  ownersid=$OPTARG
;;
p)
  package=$OPTARG
;;
u)
  ulyaothpackage=$OPTARG
;;
esac
done

start