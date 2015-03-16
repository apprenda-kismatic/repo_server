# import release

git reset --hard
git pull origin master

cd kismatic_builds
#reprepro includedeb <osrelease> <debfile>
reprepro -b /data/repos/apt/debian remove trusty kubernetes-master
reprepro -b /data/repos/apt/debian remove utopic kubernetes-node

reprepro -b /data/repos/apt/debian remove trusty etcd
reprepro -b /data/repos/apt/debian remove utopic etcd

reprepro -b /data/repos/apt/debian includedeb trusty debian/base/kubernetes*.deb
reprepro -b /data/repos/apt/debian includedeb utopic debian/base/kubernetes*.deb

reprepro -b /data/repos/apt/debian includedeb trusty debian/base/etcd*.deb
reprepro -b /data/repos/apt/debian includedeb utopic debian/base/etcd*.deb

# Yum
cd el/7/x86_64
rpm --resign *.rpm
cd ../../../
cp -fR el /data/repos/yum

# createrepo for each one
createrepo -d /data/repos/yum/el/7/x86_64

cd ..