#
# == Class: dnsutils::params
#
# Defines some variables based on the operating system
#
class dnsutils::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'bind-utils'
        }
        'Debian': {
            $package_name = 'dnsutils'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
