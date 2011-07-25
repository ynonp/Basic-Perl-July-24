#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol3.pl
#
#        USAGE: ./sol3.pl  
#
#  DESCRIPTION: Write a program which accepts a list of string 
#               (separate lines) and a list of numbers. 
#               The program will print all string selected by the 
#               numbers.
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 09:27:10
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Scalar::Util qw/looks_like_number/;

print "Please type in the text (line by line)\n";
my @text = <>;

print "And now the list of numbers (line by line)\n";

my @numbers;
while (my $line = <>) {
    next if ! looks_like_number($line);

    push @numbers, $line;
}

foreach my $line_number (@numbers) {
    if ( ( $line_number >= 0) && ( $line_number < @text ) ) {
        print $text[$line_number];
    } else {
        print "Out of range\n";
    }
}

