#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol5.pl
#
#        USAGE: ./sol5.pl  
#
# Write a program that reads a series of chars (one in each line) and prints a list of their decimal ascii value.
# (hint: use chr and ord)
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 09:50:03
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my @characters = <>;

#foreach my $char (@characters) {
    #print ord($char), "\n";
#}

print join "\n", map ord, @characters;
