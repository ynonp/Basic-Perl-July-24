#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol.pl
#
#        USAGE: ./sol.pl  
#
#  DESCRIPTION: Solutions to Subroutine Exercise
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 12:03:41
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use List::Util qw/reduce/;

sub sum_1 {
    my $sum = 0;
    foreach my $number (@_) {
        $sum += $number;
    }

    return $sum;
}

# prevent perl warning about possible typo in reduce
# our ($a, $b);

sub sum_2 {
    reduce { $a + $b } @_;
}

sub mul {
    reduce { $a * $b } @_;
}

sub max {
    reduce { $a > $b ? $a : $b } @_;
}

sub min {
    reduce { $a < $b ? $a : $b } @_;
}

sub take_7 {
    die 'Invalid number of args' if @_ != 7;
}

sub tens_digit {
    my ($num) = @_;

    use integer;
    $num /= 10;
    return $num % 10;
}

sub sum_tens {
    my ($x, $y, $z) = @_;

    return tens_digit($x) + tens_digit($y) + tens_digit($z);
}

sub longer_than {
    my ($required_length, @words) = @_;

    my @result;

    foreach my $word (@words) {
        push @result, $word if length($word) > $required_length;
    }
    return @result;

}

sub longer_than_2 {
    my ($required_length, @words);
    return grep { length($_) > $required_length } @words;
}

