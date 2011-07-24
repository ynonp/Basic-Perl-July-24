#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol6.pl
#
#        USAGE: ./sol6.pl  
#
#  DESCRIPTION: Randomize numbers until you reach one that is divisable in 
#               7, 13 and 15
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 15:15:57
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $number;

while (1) {
    $number = int(rand(9999999));

    next if $number %  7;
    next if $number % 13;
    next if $number % 15;

    last;
}

print "Number is: $number\n";

