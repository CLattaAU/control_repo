class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqQA62viTXNAzkrAU0fBrb7AHFd3gNuuM3oghW97OzH8AnjEDb8XCdPBcsGaHE57Mer2tIYZpAxT+SSMOi00wD4wws+IEquDtDIPA1SrlTWUqeroVMIqeWG+65ar6kYS+5x+DXFyHNyl1RPhfC//pwpSyADGMVZfVtPV4ep8H83i/1B5FZyhb1DiJPHJaqqRoh/2gefFc4ZuiSTmuVYOXm+Snl70hdX9eLzIvRZTKMrEJ6vQXyFmqI35b86de5Ng7IBc9papVklDqLnyLkv6Fo1IKawBmiNpwbzSdfA6cJGRMMuC3us5BUCAWPWwh9+C/mvXx0/C7Qlhhwfk6i7nn1',
	}  
}
