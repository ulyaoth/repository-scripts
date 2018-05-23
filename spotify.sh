### SIGN ALL PACKAGES###
# SOURCE
rpm --resign /home/sbagmeijer/rpms/centos/7/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/redhat/7/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/oraclelinux/7/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/scientificlinux/7/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/26/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/27/source/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/28/source/spotify-*

# OS
rpm --resign /home/sbagmeijer/rpms/centos/7/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/redhat/7/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/oraclelinux/7/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/scientificlinux/7/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/26/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/27/x86_64/os/spotify-*
rpm --resign /home/sbagmeijer/rpms/fedora/28/x86_64/os/spotify-*

### MOVE FILES
# SOURCE
mv /home/sbagmeijer/rpms/centos/7/source/spotify-* /mnt/repository/centos/7/source/
mv /home/sbagmeijer/rpms/redhat/7/source/spotify-* /mnt/repository/redhat/7Server/source/
mv /home/sbagmeijer/rpms/oraclelinux/7/source/spotify-* /mnt/repository/oraclelinux/7Server/source/
mv /home/sbagmeijer/rpms/scientificlinux/7/source/spotify-* /mnt/repository/scientificlinux/7/source/
mv /home/sbagmeijer/rpms/fedora/26/source/spotify-* /mnt/repository/fedora/26/source/
mv /home/sbagmeijer/rpms/fedora/27/source/spotify-* /mnt/repository/fedora/27/source/
mv /home/sbagmeijer/rpms/fedora/28/source/spotify-* /mnt/repository/fedora/28/source/

# OS
mv /home/sbagmeijer/rpms/centos/7/x86_64/os/spotify-* /mnt/repository/centos/7/x86_64/os/
mv /home/sbagmeijer/rpms/redhat/7/x86_64/os/spotify-* /mnt/repository/redhat/7Server/x86_64/os/
mv /home/sbagmeijer/rpms/oraclelinux/7/x86_64/os/spotify-* /mnt/repository/oraclelinux/7Server/x86_64/os/
mv /home/sbagmeijer/rpms/scientificlinux/7/x86_64/os/spotify-* /mnt/repository/scientificlinux/7/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/26/x86_64/os/spotify-* /mnt/repository/fedora/26/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/27/x86_64/os/spotify-* /mnt/repository/fedora/27/x86_64/os/
mv /home/sbagmeijer/rpms/fedora/28/x86_64/os/spotify-* /mnt/repository/fedora/28/x86_64/os/

### CREATE THE REPOSITORY FILES
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/26/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/26/source
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/27/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/27/source
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/28/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/fedora/28/source
sleep 10
createrepo --update --deltas --database /mnt/repository/centos/7/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/centos/7/source
sleep 10
createrepo --update --deltas --database /mnt/repository/scientificlinux/7/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/scientificlinux/7/source
sleep 10
createrepo --update --deltas --database /mnt/repository/oraclelinux/7Server/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/oraclelinux/7Server/source
sleep 10
createrepo --update --deltas --database /mnt/repository/redhat/7Server/x86_64/os
sleep 10
createrepo --update --deltas --database /mnt/repository/redhat/7Server/source