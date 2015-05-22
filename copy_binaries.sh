# import release

# copy other binaries from build location
cp -f ../kubernetes-distro-packages/kubernetes/builds/*.rpm ./kismatic_builds/el/7/x86_64
cp -f ../kubernetes-distro-packages/kubernetes/builds/*.deb ./kismatic_builds/debian/base

cp -f ../kubernetes-distro-packages/etcd/builds/*.deb ./kismatic_builds/debian/base
cp -f ../kubernetes-distro-packages/etcd/builds/*.rpm ./kismatic_builds/el/7/x86_64

# copy install.sh files
