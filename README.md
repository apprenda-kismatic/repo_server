requirements:
ruby
gem install fpm

`./build_yum_repo_setup.sh` will build packages for installing yum source from our custom repo

`sudo rpm -Uvh http://repos.kismatic.com/el/7/x86_64/kismatic-repo-el-7-1.x86_64.rpm` will install the sources

TODO:
Update fpm metadata with descriptions etc.

need to sign metadata?
gpg --detach-sign --armor repodata/repomd.xml
