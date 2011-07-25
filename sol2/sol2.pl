#===============================================================================
#
#         FILE: sol2.pl
#
#        USAGE: ./sol2.pl  
#
#  DESCRIPTION: Write a program which accepts a list of strings 
#               (separate lines), after that atccepts a number 
#               (can be negative). 
#               The program will print the string selected by the number. If the number if too big the prgram will print "Out of range!".
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 09:13:55
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Scalar::Util qw/looks_like_number/;

print "Please type in the text (line by line)\n";
my @text = <>;

#same as
# while (my $line = <>) {
#     push @text, $line;
# }

print "Please type line number: ";
my $number = <>;

if ( ! looks_like_number($number) ) {
    chomp $number;
    die "Number expected but got <$number> instead";
}

if ( ( $number >= 0) && ( $number < @text ) ) {
    print $text[$number];
} else {
    print "Out of range\n";
}


