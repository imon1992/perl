#!/usr/bin/perl

use strict;
use lib('libs');
use Data::Dumper;

print Dumper(\@INC);
sub foo
{
    my @arr = (10,20) ;
    #print $arr->[0];
    return \@arr;
}

my $c = foo(10);
print $c;
