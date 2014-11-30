# == Class: dnsutils
#
# This class sets up dnsutils (a.k.a. bind-utils)
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class dnsutils inherits dnsutils::params
{

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_dnsutils', 'true') != 'false' {

    include dnsutils::install
}
}
