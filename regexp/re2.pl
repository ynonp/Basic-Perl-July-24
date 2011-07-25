#!/usr/bin/perl 
#===============================================================================
#
#         FILE: re2.pl
#
#        USAGE: ./re2.pl  
#
#  DESCRIPTION: Advanced Regular Expressions Examples
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 15:27:30
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $DUPS = qr {
# Matches duplicate words in a sentence

# take a word
(\b\w+\b)

# some things in between
.*

# and then that captured word AGAIN
\1
}x;

while (<>) {
    my ($dup) = /$DUPS/;

    next if ! defined($dup);

    print "Double Word: $dup\n";
}






