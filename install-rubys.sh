#
# Install a selection of Ruby versions, in particular those compatible with
# the various active Puppet versions.
#

# Setup RVM in the Jenkins account.
/usr/bin/gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
/usr/bin/curl -sSL https://get.rvm.io | /bin/bash -s stable
source ~/.profile

rvm install ruby-2.1.5 --binary

for R in ruby-1.8.7-head ruby-1.9.3-p551 ruby-2.0.0-p598 ruby-2.1.5 ruby-2.2.0 ruby-2.2.1
do
	rvm install $R
	rvm use $R
	gem install bundler
done