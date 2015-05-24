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

# fpm -s dir -n "kismatic-repo-el-6" \
# -p kismatic_el_repo/builds \
# -C ./kismatic_el_repo \
# -v 6 \
# -a x86_64 \
# -t rpm --rpm-os linux \
# RPM-GPG-KEY-kismatic=/etc/pki/rpm-gpg/RPM-GPG-KEY-kismatic \
# kismatic-el6.repo=/etc/yum.repos.d/kismatic.repo

fpm -s dir -n "kismatic-repo-el" \
-p kismatic_builds/el/7/x86_64 \
-C ./kismatic_repo_el \
-v 7 \
-a x86_64 \
-t rpm --rpm-os linux \
--after-install kismatic_repo_el/after-install.sh \
--maintainer "Kismatic, Inc. <info@kismatic.com>" \
--vendor "Kismatic, Inc." \
--description "Automated setup for Kismatic yum package repository" \
--url "https://www.kismatic.com" \
RPM-GPG-KEY-kismatic=/etc/pki/rpm-gpg/RPM-GPG-KEY-kismatic \
kismatic-el7.repo=/etc/yum.repos.d/kismatic.repo
