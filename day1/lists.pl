#!/usr/bin/perl 
#===============================================================================
#
#         FILE: lists.pl
#
#        USAGE: ./lists.pl  
#
#  DESCRIPTION: Examples for using lists in perl
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 12:04:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my @numbers = (2, 3, 5, 7..10);
my @letters = ('a', 'b', 'c', 'f'..'l');
my @chars   = qw(a b c d);
my @tags    = qw(a img script br hr);

my @colors  = qw/red blue green white purple yello/;

my $first_name = q(Ynon);
my $last_name  = q/Perek/;

my $full_name  = qq($first_name $last_name);


my @data;

push @data, 10, 20, 50;

$data[0] = 99;


print "@numbers", "\n", @letters, "\n";

# takes the first two elements from @numbers
my $two   = shift @numbers;
my $three = shift @numbers;

# the same
# my ($two, $three, @numbers) = @numbers;

print "@numbers", "\n", @letters, "\n";

# puts back the numbers at the start of the list
unshift @numbers, $two, $three;

print "@numbers", "\n", @letters, "\n";


my $last = pop @numbers;

print "@numbers", "\n", @letters, "\n";

push @numbers, $last;


print "@numbers", "\n", @letters, "\n";
