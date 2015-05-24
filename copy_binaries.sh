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

# copy other binaries from build location
cp -f ../kubernetes-distro-packages/kubernetes/builds/*.rpm ./kismatic_builds/el/7/x86_64
cp -f ../kubernetes-distro-packages/kubernetes/builds/*.deb ./kismatic_builds/debian/base

cp -f ../kubernetes-distro-packages/etcd/builds/*.deb ./kismatic_builds/debian/base
cp -f ../kubernetes-distro-packages/etcd/builds/*.rpm ./kismatic_builds/el/7/x86_64

# copy install.sh files
