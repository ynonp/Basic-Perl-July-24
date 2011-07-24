#!/usr/bin/perl 
#===============================================================================
#
#         FILE: avg.pl
#
#        USAGE: ./avg.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 10:32:19
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

print "Hello. Please type in two numbers for the calculation\n";

my $first_name = 'Ynon';
my $last_name  = 'Perek';

my $full_name = "$first_name $last_name";

# reading user input is handled with the <> operator. It takes a filehandle
# and reads a single line from it, in this case we use STDIN to refer the
# standard input

my $a = <>;
chomp $a;

my $b = <>;
chomp $b;

my $avg = ($a + $b) / 2;

print "The average of $a and $b is $avg\n";

