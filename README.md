## What is centos6-jenkins-ruby?

centos6-jenkins-ruby is an image that provides a CenOS6 ssh Jenkins client with
various Ruby versions installed via RVM.

This image setup for using Jenkins to test Puppet modules.

The following Ruby versions, which are the Puppet supported versions,
are pre-installed:

- ruby-1.8.7-head
- ruby-1.9.3-p551
- ruby-2.0.0-p598
- ruby-2.1.5
- ruby-2.2.0
- ruby-2.2.1

## Usage
To run the latest version of the container:

docker run -d -P dfilion/centos6-jenkins-ruby

## SSH access
You can ssh into the running image using the default credentials.

Username: jenkins
Password: jenkins

The ssh host keys are generated on every execution of the image.

Static ssh keys (user or host) are not yet supported.
