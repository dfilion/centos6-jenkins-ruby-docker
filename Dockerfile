# Based on the dfilion/centos6-jenkins image, pre-install a selection of
# ruby versions so we don't need to download them on every run.
#

FROM centos6-jenkins
MAINTAINER David Filion <filiond@gmail.com>

COPY install-rubys.sh /tmp/install-rubys.sh
RUN su -l -s /bin/bash -c '/bin/bash -l /tmp/install-rubys.sh' jenkins
RUN su -l -s /bin/bash -c 'rvm list' jenkins

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
