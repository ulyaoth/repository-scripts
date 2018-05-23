#!/bin/bash
# Argument = -h (shows the help information)
# Argument = -p (package name .i.e nginx)
# Argument = -u (ulyaoth package name .i.e ulyaoth-nginx)

usage()
{
cat << EOF
usage: $0 options
OPTIONS:
   -h  Shows this help information
   -p  Package Name (.i.e nginx)
   -u  Ulyaoth Package Name (.i.e ulyaoth-nginx)
EOF
}

# Start the build loop.
startbuild()
{
  /bin/bash rpmbuild-amazonlinux.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-redhat7.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-centos7.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-oraclelinux7.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-scientificlinux7.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-fedora26.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-fedora27.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
  /bin/bash rpmbuild-fedora28.sh -i $instance_type -p $package -u $ulyaothpackage -o $ownersid & >> /dev/null 2>&1
}

# Set required variables.
instance_type="c4.large"
ownersid="035742204304"
package=""
ulyaothpackage=""

while getopts h:p:u: opt; do
case $opt in
h)
  usage
;;
p)
  package=$OPTARG
;;
u)
  ulyaothpackage=$OPTARG
;;
esac
done

startbuild