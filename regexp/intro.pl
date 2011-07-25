#!/usr/bin/perl 
#===============================================================================
#
#         FILE: intro.pl
#
#        USAGE: ./intro.pl  
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 13:56:25
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $PHONE_NUMBER = qr{
# This regular rexpression matches
# a phone number in Israel (other than mobile phones / hot)
#
# Sample Matches:
# 02-9113020
# 03-9331234
# 09-8995040
#
#
# Area Code
  0[23489]

# Maybe a dash
  -?

# And then 7 digits
  \d{7}
}x;


while (<>) {
    print "Match !\n" if /foo/;
    print "Uppercase Found !\n" if /[A-Z]/;
    print "Phone !\n" if /$PHONE_NUMBER/;

    print "Capital First !\n" if /^[A-Z]/;
}


#while (my $line = <>) {
    #print "Match !\n" if $line =~ /foo/;
#}





