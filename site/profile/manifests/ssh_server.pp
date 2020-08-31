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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQClKpi5/RzBfooxHhOp8H/tLuSiwrM0bn8K5qR6WRhOSgFFrL/Oy0gfs8gKHUfn0uWvDV60YT8ZpsQRa0uhHYHjjSkv2mhf5zP6IEA8q3TGzvZEHp/IytezQYtZPN4v49LLZJdR7xs2k9+AVoD/HWbybHrxAOHHzTCSnqbnMTj8ZJFbxLwgw9kK7oyVIDyHE5W7/Ct63uPq7jsprKvKLpjQPsGOxLd7yTOJlljQrgP5tq5r8vOeNVMsGlNdxacg0Jbw/CA6Lso2W3KwHE9q8AB52CHRaN8P/kY6uu+KSGpiwKiVsal4ARpgQUDs7lCsuHi1CokLc+4lesJQ9kjPgp07',
	}  
}
