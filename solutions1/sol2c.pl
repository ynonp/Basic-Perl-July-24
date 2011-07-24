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
use List::Util qw/max/;

my @numbers;

for (1..10) {
    my   $number = <>;
    push @numbers, $number;
}

print 'Max value is: ', max(@numbers), "\n";
