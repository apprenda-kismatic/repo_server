# import release

# copy other binaries from build location
cp -f ../k8s_distro_builder/kubernetes/builds/*.rpm ./kismatic_builds/el/7/x86_64
cp -f ../k8s_distro_builder/kubernetes/builds/*.deb ./kismatic_builds/debian/base

# copy install.sh files