requirements:
ruby
gem install fpm

`./build_yum_repo_setup.sh` will build packages for installing yum source from our custom repo

`./copy_binaries.sh` add our custom packages to this repo

`./release.sh` script should be run on the repo server after new packages are added or updated

Testing:
`sudo rpm -Uvh http://repos.kismatic.com/el/7/x86_64/kismatic-repo-el-7-1.x86_64.rpm` will install the repo source on a local box

TODO:
Update fpm metadata with descriptions etc.

TODO: could sign metadata as well, less used
gpg --detach-sign --armor repodata/repomd.xml

