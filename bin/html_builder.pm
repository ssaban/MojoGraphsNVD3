#!/usr/bin/env perl
package html_builder;

use strict;
use warnings;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION     = 1.00;
@ISA         = qw(Exporter);
@EXPORT      = ();
@EXPORT_OK   = qw(get_html_for_name);
%EXPORT_TAGS = ( CLI => [qw()],
                 LIB    => [qw(&get_html_for_name)]);


sub render_html_graph {
    my ($header)= @_;

    my $html_graph =<<END;    
                        <a href="mailto:sarel.saban\@gmail.com">Sarel Email</a>                         
END
      return $html_graph;
}



1;

