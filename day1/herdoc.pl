#!/usr/bin/perl 
#===============================================================================
#
#         FILE: herdoc.pl
#
#        USAGE: ./herdoc.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/24/2011 10:58:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $first_name = 'Ynon';
my $last_name  = 'Perek';

my $full_name  = "$first_name $last_name";

my $FullName;
my $fullName;

my $ReallyLongVariableNameThatIsNotReallyReadable;
my $really_long_variable_name_with_no_special_meaning;

my $PI = 3.14;
my $MAX_VALUE = 10;



my $template = <<END;
Dear Sir/Madam.

Please see attached file for details.

Thanks In Advance,
  $full_name

END

print $template;
