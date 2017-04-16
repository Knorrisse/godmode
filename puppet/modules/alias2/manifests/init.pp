class alias2 {
        package { apache2:
                ensure => 'installed',
                allowcdrom => 'true',
        }

        file { '/etc/apache2/ports.conf':
                content => template('alias2/ports.conf.erb'),
                notify => Service['apache2'],
        }

        service { 'apache2':
                ensure => 'true',
                enable => 'true',
                provider => 'systemd',
        }
}



