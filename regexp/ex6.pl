#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex6.pl
#
#        USAGE: ./ex6.pl  
#
#  DESCRIPTION: A program that takes a sentence and a word
#               checks if the word is i the sentence
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 14:56:50
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $sentence = <>;

while (my $word = <>) {
    chomp $word;

    print "found !\n" if $sentence =~ /\b$word\b/;
}






