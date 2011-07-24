use strict;
use warnings;

my $text = 'Hello World';

my $rev     = reverse $text;
my @revlist = reverse $text;

print 'rev 1: ', reverse($text), "\n";
print 'rev 2: ', $rev, "\n";
print 'rev 3: ', scalar reverse($text), "\n";

