#!/usr/bin/env perl
use Mojolicious::Lite;
#instead of using push @INC use FindBin
use FindBin;                # where was script installed?
use lib "$FindBin::Bin/bin";      # use the utilities used in this file are relative to this by/bin

# Documentation browser under "/perldoc:"
plugin 'PODRenderer';
  

#get '/' => {text => 'I ♥ Mojolicious!'};

get '/' => sub {
  my $self = shift;
  $self->render('areagraph');
};

#app->config(hypnotoad => {listen => ['http://*:3000']});
#get '/' => {text => 'ALL GLORY TO THE HYPNOTOAD!'};
#app->start;



app->start();
