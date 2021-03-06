FROM centos:8
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

# install repos
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm http://yum.xmedicus.com/opensource/rhel-8-x86_64/RPMS/openmedicus-release-rhel-2.8-1.el7.noarch.rpm

# install Extra
# install mysql and postgresql client
# install Mono
RUN yum clean all && yum -y install vim-enhanced bash-completion unzip net-tools mysql postgresql compat-giflib mono-complete && yum clean all && rm -rf /var/cache/yum

