#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol4.pl
#
#        USAGE: ./sol4.pl  
#
#  DESCRIPTION: Randomize a number and print the sum of its digits
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 15:08:36
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use integer;

my $number = int(rand(10000));
warn 'Using: ', $number;
my $sum;
while ( $number ) {
    my $digit = $number % 10;
    $number /= 10;

    $sum += $digit;
}

print "Sum of digits is: $sum\n";

