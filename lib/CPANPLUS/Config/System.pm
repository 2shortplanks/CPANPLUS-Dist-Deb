package CPANPLUS::Config::System;

use strict;
use warnings;

sub setup {
  my $conf = shift->conf;

  # add the deb namespace
  $conf->mk_accessors( 'deb' );
  my $deb = Object::Accessor->new;
  $conf->deb($deb);
  $deb->mk_accessors('manual_dependencies');
  $deb->manual_dependencies({});
}

1;
