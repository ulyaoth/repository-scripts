### SIGN ALL PACKAGES###
# SOURCE
rpm --resign /home/sbagmeijer/rpms/centos/7/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/redhat/7/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/oraclelinux/7/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/scientificlinux/7/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn/latest/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/26/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/27/source/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/28/source/ulyaoth-*

# DEBUG
rpm --resign /home/sbagmeijer/rpms/centos/7/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/redhat/7/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/oraclelinux/7/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/scientificlinux/7/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn/latest/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/26/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/27/x86_64/debug/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/28/x86_64/debug/ulyaoth-*

# OS
rpm --resign /home/sbagmeijer/rpms/centos/7/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/redhat/7/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/oraclelinux/7/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/scientificlinux/7/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn/latest/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/26/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/27/x86_64/os/ulyaoth-*
rpm --resign /home/sbagmeijer/rpms/fedora/28/x86_64/os/ulyaoth-*

### MOVE FILES
# SOURCE
mv /home/sbagmeijer/rpms/centos/7/source/ulyaoth-* /mnt/repository/centos/7/source/
mv /home/sbagmeijer/rpms/redhat/7/source/ulyaoth-* /mnt/repository/redhat/7Server/source/
mv /home/sbagmeijer/rpms/oraclelinux/7/source/ulyaoth-* /mnt/repository/oraclelinux/7Server/source/
mv /home/sbagmeijer/rpms/scientificlinux/7/source/ulyaoth-* /mnt/repository/scientificlinux/7/source/
mv /home/sbagmeijer/rpms/amazonlinux/amzn/latest/source/ulyaoth-* /mnt/repository/amazonlinux/amzn/latest/source/
mv /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/source/ulyaoth-* /mnt/repository/amazonlinux/amzn2/latest/source/
mv /home/sbagmeijer/rpms/fedora/26/source/ulyaoth-* /mnt/repository/fedora/26/source/
mv /home/sbagmeijer/rpms/fedora/27/source/ulyaoth-* /mnt/repository/fedora/27/source/
mv /home/sbagmeijer/rpms/fedora/28/source/ulyaoth-* /mnt/repository/fedora/28/source/

# DEBUG
mv /home/sbagmeijer/rpms/centos/7/x86_64/debug/ulyaoth-* /mnt/repository/centos/7/x86_64/debug/
mv /home/sbagmeijer/rpms/redhat/7/x86_64/debug/ulyaoth-* /mnt/repository/redhat/7Server/x86_64/debug/
mv /home/sbagmeijer/rpms/oraclelinux/7/x86_64/debug/ulyaoth-* /mnt/repository/oraclelinux/7Server/x86_64/debug/
mv /home/sbagmeijer/rpms/scientificlinux/7/x86_64/debug/ulyaoth-* /mnt/repository/scientificlinux/7/x86_64/debug/
mv /home/sbagmeijer/rpms/amazonlinux/amzn/latest/x86_64/debug/ulyaoth-* /mnt/repository/amazonlinux/amzn/latest/x86_64/debug/
mv /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/x86_64/debug/ulyaoth-* /mnt/repository/amazonlinux/amzn2/latest/x86_64/debug/
mv /home/sbagmeijer/rpms/fedora/26/x86_64/debug/ulyaoth-* /mnt/repository/fedora/26/x86_64/debug/
mv /home/sbagmeijer/rpms/fedora/27/x86_64/debug/ulyaoth-* /mnt/repository/fedora/27/x86_64/debug/
mv /home/sbagmeijer/rpms/fedora/28/x86_64/debug/ulyaoth-* /mnt/repository/fedora/28/x86_64/debug/

# OS
mv /home/sbagmeijer/rpms/centos/7/x86_64/os/ulyaoth-* /mnt/repository/centos/7/x86_64/os/
mv /home/sbagmeijer/rpms/redhat/7/x86_64/os/ulyaoth-* /mnt/repository/redhat/7Server/x86_64/os/
mv /home/sbagmeijer/rpms/oraclelinux/7/x86_64/os/ulyaoth-* /mnt/repository/oraclelinux/7Server/x86_64/os/
mv /home/sbagmeijer/rpms/scientificlinux/7/x86_64/os/ulyaoth-* /mnt/repository/scientificlinux/7/x86_64/os/
mv /home/sbagmeijer/rpms/amazonlinux/amzn/latest/x86_64/os/ulyaoth-* /mnt/repository/amazonlinux/amzn/latest/x86_64/os/
mv /home/sbagmeijer/rpms/amazonlinux/amzn2/latest/x86_64/os/ulyaoth-* /mnt/repository/amazonlinux/amzn2/latest/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/26/x86_64/os/ulyaoth-* /mnt/repository/fedora/26/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/27/x86_64/os/ulyaoth-* /mnt/repository/fedora/27/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/28/x86_64/os/ulyaoth-* /mnt/repository/fedora/28/x86_64/os/

### CREATE THE REPOSITORY FILES
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/26/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/26/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/26/source
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/27/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/27/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/27/source
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/28/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/28/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/28/source
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn/latest/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn/latest/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn/latest/source
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn2/latest/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn2/latest/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/amazonlinux/amzn2/latest/source
sleep 10
createrepo --update --deltas --database /mnt/repository/centos/7/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/centos/7/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/centos/7/source
sleep 10
createrepo --update --deltas --database /mnt/repository/scientificlinux/7/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/scientificlinux/7/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/scientificlinux/7/source
sleep 10
createrepo --update --deltas --database /mnt/repository/oraclelinux/7Server/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/oraclelinux/7Server/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/oraclelinux/7Server/source
sleep 10
createrepo --update --deltas --database /mnt/repository/redhat/7Server/x86_64/debug
sleep 10
createrepo --update --deltas --database /mnt/repository/redhat/7Server/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/redhat/7Server/source