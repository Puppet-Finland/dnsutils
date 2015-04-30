# == Class: dnsutils::install
#
# This class installs dnsutils
#
class dnsutils::install inherits dnsutils::params {

    package { 'dnsutils-dnsutils':
        ensure => installed,
        name   => $::dnsutils::params::package_name,
    }
}
