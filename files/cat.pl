#!/usr/bin/perl 
#===============================================================================
#
#         FILE: cat.pl
#
#        USAGE: ./cat.pl  
#
#  DESCRIPTION: reads a file and prints its content
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 07/25/2011 16:13:45
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

# only with perl > 5.10
#use autodie;

# only with perl > 5.8
use Fatal qw/open close/;

sub cat_file {
    my ($filename) = @_;

    open my $fh, '<', $filename;

    while(my $line = <$fh>) {
        print $line;
    }

    close $fh;
}

sub copy_file {
    my ($src, $dst) = @_;
    
    open my $input, '<', $src;
    open my $output, '>', $dst;

    while (my $line = <$input>) {
        print {$output} $line;
    }

    close $input;
    close $output;
}

sub make_file {
    my ($filename) = @_;

    die 'File Exists' if -e $filename;

    open my $output, '>', $filename;

    while (my $line = <>) {
        print {$output} $line;
    }

    close $output;

}

#cat_file($filename);
#copy_file($file1, $file2);
my $filename = shift;
make_file($filename);

