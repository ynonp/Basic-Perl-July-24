#!/usr/bin/perl 
#===============================================================================
#
#         FILE: mul_text.pl
#
#        USAGE: ./mul_text.pl  
#
#  DESCRIPTION: takes a string and a number and prints the string
#               n times according to the number. 
#               For Example, input: 
#               hello
#               5
#
#               Output:
#               hello
#               hello
#               hello
#               hello
#               hello
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 11:42:20
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

print "Enter the text\n";
my $text = <>;
chomp $text;

print "Enter how many times to print: \n";
my $times = <>;

my $text_to_print = $text . "<====> \n";
print $text_to_print x $times;

