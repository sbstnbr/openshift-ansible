# https://docs.openshift.org/latest/install_config/install/host_preparation.html

# Installing Base Packages

yum install wget git net-tools bind-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct
yum update

# Preparing for Advanced Installations

## RPM based installer
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
yum -y --enablerepo=epel install ansible pyOpenSSL

## Clone ansible openshift
cd ~
git clone https://github.com/openshift/openshift-ansible
cd openshift-ansible

# Installing Docker
yum install docker-1.12.6
rpm -V docker-1.12.6
docker version
sed -i '/OPTIONS=.*/c\OPTIONS="--selinux-enabled --insecure-registry 172.30.0.0/16"' \
/etc/sysconfig/docker