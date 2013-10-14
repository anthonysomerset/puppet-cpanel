class cpanel::imagemagick {

    exec { "install_imagemagick":
        cwd => "/tmp",
        command => "/scripts/installimagemagick",
        creates => "/usr/include/ImageMagick",
        timeout => 3600,
        require => Class['cpanel'],
    }
	
}