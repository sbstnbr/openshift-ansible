# AWS
source ~/aws_creds
export ec2_vpc_subnet='subnet-f1ff29aa'

# Master instances
export ec2_master_instance_type='m4.large'

# Infra node instances
export ec2_infra_instance_type='m4.large'

# Non-infra node instances
export ec2_node_instance_type='m4.large'

#etcd instances
export ec2_etcd_instance_type='m4.large'

#If needed, these values can be changed by setting environment variables on your system.
export ec2_image='ami-0d063c6b' #Centos7
export ec2_region='eu-west-1'
export ec2_keypair='ls-openshift'
export ec2_security_groups="['public']"
export ec2_assign_public_ip='true'
export os_etcd_root_vol_size='20'
export os_etcd_root_vol_type='standard'
export os_etcd_vol_size='20'
export os_etcd_vol_type='standard'
export os_master_root_vol_size='20'
export os_master_root_vol_type='standard'
export os_node_root_vol_size='15'
export os_docker_vol_size='50'
export os_docker_vol_ephemeral='false'