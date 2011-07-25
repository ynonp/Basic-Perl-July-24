#!/usr/bin/perl 
#===============================================================================
#
#         FILE: nodirs.pl
#
#        USAGE: ./nodirs.pl  
#
#  DESCRIPTION: shows only files (no dirs) from ls -l
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 15:05:28
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $FILE_LINE = qr {
# a line from ls -l representing a file
#
# Sample Matches:
# -rw-r--r--  1 ynonperek  staff  642 Jul 25 15:03 ex6.pl
# -rw-r--r--  1 ynonperek  staff  925 Jul 25 14:30 intro.pl
#
# Sample Mismatches:
# drwxr-xr-x  2 ynonperek  staff   68 Jul 25 15:05 foo
#

# first field(permissions)
^-[-rwx]+

# field Separator
\s+

# fields 2-5
\d+ \s+ \w+ \s+ \w+ \s+

# file size
(\d+)

.*

# file name
\s(.+)$
}x;

my $total = 0;
while (<>) {
    my ($file_size, $file_name) = /$FILE_LINE/;
    next if ! defined($file_size);

    print "Match: $file_name\n";
    $total += $file_size;
}

print "Total size: $total\n";

