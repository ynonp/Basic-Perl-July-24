#!/usr/bin/perl 
#===============================================================================
#
#         FILE: flow.pl
#
#        USAGE: ./flow.pl  
#
#  DESCRIPTION: Flow Controls In Perl
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 12:19:19
#     REVISION: ---
#===============================================================================

use strict;
use warnings;


if ( 1 < 2 ) {
    print "cool, math is working\n";
} elsif (1 == 2) {
    print "Oh my...\n";
} else {
    print "OMG\n";
}

for (my $i=0; $i < 10; ++$i) {
    print "loop iteration: $i\n";
}

my @numbers = (2, 4, 6, 8, 10);

foreach my $num (@numbers) {
    my $dbl = $num * 2;
    print "$dbl is twice of $num\n";
}

#while (my $line = <>) {
    #chomp $line;
    #print "====> $line <=====\n";
#}


