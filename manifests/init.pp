# == Class: dnsutils
#
# This class sets up dnsutils (a.k.a. bind-utils)
#
# == Parameters
#
# [*manage*]
#   Whether to manage dnsutils with Puppet or not. Valid values are 'yes' 
#   (default) and 'no'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class dnsutils
(
    $manage = 'yes'

) inherits dnsutils::params
{

if $manage == 'yes' {

    include ::dnsutils::install
}
}
