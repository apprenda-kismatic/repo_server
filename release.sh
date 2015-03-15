# import release

cd .kismatic_builds
#reprepro includedeb <osrelease> <debfile>
reprepro -b /var/www/repos/apt/debian includedeb trusty debian/base/kubernetes*.deb
reprepro -b /var/www/repos/apt/debian includedeb utopic debian/base/kubernetes*.deb

# Yum
rpm --resign el/*.rpm

sudo cp ./el/*.rpm /var/www/repos/yum/el
cd /var/www/repos/yum/el
sudo createrepo -d .
