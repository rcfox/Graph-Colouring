#!/usr/bin/perl
use 5.010_000;
use strict;
use warnings;

<>;
my $in = <>; chomp $in;
my @input = split(/ /,$in);

dotify(sub { eval for(@input); });

sub dotify {
	my $proc = shift;
	say "digraph G {";
	$proc->();
	say "}";
}

sub edge {
	my $head = shift;
	my $tail = shift;
	say "$head -> $tail;";
}

sub colour {
	my $node = shift;
	my $colour = get_colour(shift());
	say "$node [color=\"$colour\"];";
}

sub get_colour {
	my @colours = ( "#FF0000", "#00FF00", "#0000FF" );
	return $colours[shift()];
}
