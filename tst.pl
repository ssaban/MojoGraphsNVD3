#!/usr/bin/env perl
#instead of using push @INC use FindBin
use FindBin;                # where was script installed?
use lib "$FindBin::Bin/bin";      # use the utilities used in this file are relative to this by/bin
use html_builder qw(:LIB);
use Data::Dumper;


foreach my $day (1..30){
                print "[ " . getEpoc($day,03,2015) . ", " . rand(200) . " ],\n";
        }


#    my @dates = ( [01,03,2015],
#                 [02,03,2015],
#                 [03,03,2015] );
#
#    foreach my $p2a (@dates){
#        print getEpoc($p2a->[0],$p2a->[1],$p2a->[2]) . "\n";
#    }
