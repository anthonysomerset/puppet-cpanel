class cpanel::seo {

    exec { "install_seo":
        cwd => "/tmp",
        command => "/usr/local/cpanel/bin/manage_features enable attracta --yes",
        require => Class['cpanel'],
        refreshonly => true
    }

}