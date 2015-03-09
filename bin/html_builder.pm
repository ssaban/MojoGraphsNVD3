#!/usr/bin/env perl
package html_builder;

use strict;
use warnings;
use Exporter;
use DateTime;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION     = 1.00;
@ISA         = qw(Exporter);
@EXPORT      = ();
@EXPORT_OK   = qw(get_html_for_name getEpoc );
%EXPORT_TAGS = ( CLI => [qw()],
                 LIB    => [qw(&get_html_for_name getEpoc)]);


sub render_html_graph {
    my ($header)= @_;

    my $html_graph =<<END;    
                        <a href="mailto:sarel.saban\@gmail.com">Sarel Email</a>                         
END
      return $html_graph;
}



sub getEpoc{
    my ($day,$month,$year) = @_;
   return  (DateTime->new( year   => $year, month  => $month, day    => $day, hour   => 16, minute => 00, 
                       second => 0, nanosecond => 500000000, time_zone => 'UTC' ))->epoch;
}

sub randomData{
	foreach my $day (1..30){
		print "[ " . getEpoc($day,03,2015) . ", " . rand(200) . " ],\n";
	}

}

1;

