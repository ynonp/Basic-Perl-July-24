#!/usr/bin/perl 
#===============================================================================
#
#         FILE: subs.pl
#
#        USAGE: ./subs.pl  
#
#  DESCRIPTION: Substitution examples
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 15:35:04
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

while (my $line = <>) {
    $line =~ s/\bthe\b//;
    print $line;
}



