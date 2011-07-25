#!/usr/bin/perl 
#===============================================================================
#
#         FILE: sol4.pl
#
#        USAGE: ./sol4.pl  
#
#  DESCRIPTION: Write a program which accepts 2 strings - 
#               a username & a password. 
#               The program will print "Welcome !" in case the 
#               password is correct
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 09:33:59
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my %users = (
    apple   => 'red',
    orange  => 'orange',
    lettuce => 'green',
    lemon   => 'yellow',
);

print "Welcome To The Factory. Identify Yourself !\n";

print "Username: ";
my $username = <>;
chomp $username;

print "Password: ";
my $password = <>;
chomp $password;

if ( ( exists $users{$username} ) && 
     ( $users{$username} eq $password ) ) {
    print "Welcome\n";
} else {
    print "Go Away !\n";
}


