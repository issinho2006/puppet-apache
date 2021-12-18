# @summary 
#
# Installs the base Apache package
#
# @example
#   include apache::install
class apache::install {
  package { "${apache::install_name}":
    ensure => $apache::install_ensure,
  }
}
