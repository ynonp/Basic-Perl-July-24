#!/usr/bin/perl 
#===============================================================================
#
#         FILE: mul.pl
#
#        USAGE: ./mul.pl  
#
#  DESCRIPTION: reads two numbers from the users and 
#               prints their multiplication
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 11:39:15
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

print "Please type in two numbers\n";

my $a = <>;
my $b = <>;

chomp $a;
chomp $b;

print "$a * $b = ", $a * $b, "\n";


