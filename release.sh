# import release

cd kismatic_builds
#reprepro includedeb <osrelease> <debfile>
reprepro -b /var/www/repos/apt/debian includedeb trusty debian/base/kubernetes*.deb
reprepro -b /var/www/repos/apt/debian includedeb utopic debian/base/kubernetes*.deb

# Yum
cd el/7/x86_64
rpm --resign *.rpm
cd ../../../
\cp -R el /var/www/repos/yum

# createrepo for each one
createrepo -d /var/www/repos/yum/el/7/x86_64
