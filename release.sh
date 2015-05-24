#!/bin/bash

# Copyright 2015 The Kismatic Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# import release

git reset --hard
git pull origin master

cd kismatic_builds
#reprepro includedeb <osrelease> <debfile>
# Remove
reprepro -b /data/repos/apt/debian remove trusty kubernetes-master
reprepro -b /data/repos/apt/debian remove trusty kubernetes-node
reprepro -b /data/repos/apt/debian remove utopic kubernetes-master
reprepro -b /data/repos/apt/debian remove utopic kubernetes-node

reprepro -b /data/repos/apt/debian remove trusty etcd
reprepro -b /data/repos/apt/debian remove utopic etcd

# Adds
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
