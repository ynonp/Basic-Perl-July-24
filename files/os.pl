#!/usr/bin/perl 
#===============================================================================
#
#         FILE: os.pl
#
#        USAGE: ./os.pl  
#
#  DESCRIPTION: os interaction using open
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 16:35:01
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use autodie;

open my $files, 'ls -l|';

while (my $line = <$files>) {
    print $line if $line =~ /^-/;
}

close $files;
