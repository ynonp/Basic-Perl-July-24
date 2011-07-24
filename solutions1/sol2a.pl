#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol2a.pl
#
#        USAGE: ./sol2a.pl  
#
#  DESCRIPTION: The program reads 10 numbers from the user 
#               and prints the largest one
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 14:33:49
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $max = <>;

for ( my $i = 0; $i < 9; ++$i ) {
    my $next = <>;
    if ( $next > $max ) {
        $max = $next;
    }
}

print "Max value is: $max\n";

