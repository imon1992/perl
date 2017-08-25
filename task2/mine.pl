#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('Utils');

use Utils::File;
use Utils::Substitutor;
use Utils::Parser;

my $fileReader = Utils::File->new();
my @file = $fileReader->readFile('plasceHolders.txt');
#print Dumper(@file);

my $fileHtml = $fileReader->readFile('file.html');
my $sub = Utils::Substitutor->new();

my $langs = $sub->makeHash(@file);

#print Dumper($langs);
my $parser = Utils::Parser->new();

my $result = $parser->parser($fileHtml,$langs);

print Dumper($result);
