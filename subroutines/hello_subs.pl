#!/usr/bin/perl 
#===============================================================================
#
#         FILE: hello_subs.pl
#
#        USAGE: ./hello_subs.pl  
#
#  DESCRIPTION: Subroutines Introduction In Perl
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 10:28:19
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Scalar::Util qw/looks_like_number/;

sub PI { 3.14 }

print "PI = ", PI(), "\n";
print "PI = ", PI(), "\n";
print "PI = ", PI() + 2, "\n";

sub print_many {
    my $text  = shift or die 'Missing: text';
    my $times = shift || 7;

    if ( ! defined($times) ) {
        $times = 7;
    }

    print $text for (1..$times);
}

print_many("foo\n", 10);

exit;

sub say_my_name {
    warn '>> say my name';
    print "Hello, Ynon\n";
}

sub power {
    my ($base, $exp) = @_;

    die 'Invalid Argument: base' if ! defined($base);
    die 'Invalid Argument: exp'  if ! defined($exp);

    die 'Not a number: base'     if ! looks_like_number($base);

    return $base ** $exp;
}

sub hello {
    warn '>> hello';
    my ($name) = @_;
    print "Hello, $name\n";
}

sub greet_everyone {
    warn '>> greet_everyone';
    foreach my $name (@_) {
        print "Hello, $name\n";
    }
}

sub colors {
    my @colors = qw/red blue green yellow purple/;
    return @colors;
}

my $colors = colors();
my @colors = colors();

say_my_name();
hello("Jimmy", 'Tom', 'Jane');
greet_everyone("Jimmy", 'Tom', 'Jane');

my $thirty_two = power(2, 5);
my $wtf        = power(4);

print $thirty_two, "\n";

