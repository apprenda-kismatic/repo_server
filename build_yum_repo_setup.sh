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
