# == Class: dnsutils::install
#
# This class installs dnsutils
#
class dnsutils::install inherits dnsutils::params {

    package { 'dnsutils-dnsutils':
        name => "${::dnsutils::params::package_name}",
        ensure => installed,
    }
}
