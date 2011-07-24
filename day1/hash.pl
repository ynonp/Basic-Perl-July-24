#!/usr/bin/perl 
#===============================================================================
#
#         FILE: hash.pl
#
#        USAGE: ./hash.pl  
#
#  DESCRIPTION: Examples for using associative arrays in perl
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 15:52:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my %buses = (
    810 => 60,
    5   => 5,
    21  => 30,
    42  => 10,
    51  => 0,
    24  => undef,
);

my $bus = 21;
print "the bus $bus frequency is: ", $buses{$bus}, " minutes \n";

$buses{920} = 15;
$buses{5}   = 10;

print 'kaboom !' if exists $buses{920};

while (my ($bus, $freq) = each %buses ) {
    print "$bus  $freq\n";
}

if ( exists $buses{51} ) {
    print "51 exists\n";
}

if ( defined $buses{24} ) {
    print "24 is defined\n";
}

if ( exists $buses{999} ) {
    print "999 exists\n";
}


if ( $buses{24} ) {
    print "buses 24 is true\n";
}

if ( $buses{51} ) {
    print "buses 51 is true\n";
}

if ( $buses{810} ) {
    print "buses 810 is true\n";
}

if ( $buses{999} ) {
    print "buses 999 is true\n";
}



