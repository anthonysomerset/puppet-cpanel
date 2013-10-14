class cpanel::softaculous {

	exec { "install_softaculous":
    	cwd => "/tmp",
        command => "/usr/bin/wget -N http://files.softaculous.com/install.sh && sh install.sh",
        creates => "/var/softaculous/zikula/",
        require => Class['cpanel'],
        timeout => 3600
    }

}