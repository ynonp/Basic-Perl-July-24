#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol3.pl
#
#        USAGE: ./sol3.pl  
#
#  DESCRIPTION: Randomize 7 numbers, prints the sum, 
#               if the sum is divisable by 7 => prints "Boom !"
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 15:04:31
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $sum = 0;


# $sum += int(rand(100)) for (1..7);
# the same as:

for (1..7) {
    $sum += int(rand(100));
}

print "Sum is: $sum\n";

if ( $sum % 7 == 0 ) {
    print "Kaboom !\n";
}

