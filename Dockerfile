FROM centos:7
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

# install repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm http://yum.xmedicus.com/opensource/rhel-7-x86_64/RPMS/openmedicus-release-rhel-2.6-3.el7.noarch.rpm

# install Extra
# install mysql and postgresql client
# install Mono
RUN yum clean all && yum -y install vim-enhanced bash-completion unzip net-tools mysql postgresql mono-complete && yum clean all && rm -rf /var/cache/yum

