#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol1.pl
#
#        USAGE: ./sol1.pl  
#
#  DESCRIPTION: Write a program which accepts a list of 
#               strings (separate lines) and prints it (in one line) 
#               in reverse order of acceptance.
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 09:10:57
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my @text;

while (my $line = <>) {
    unshift @text, $line;
}

print @text;

