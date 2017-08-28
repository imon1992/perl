#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('Utils');

use Utils::File;
use Utils::Parser;
use Utils::XML;

my $fileReader = Utils::File->new();
my @file = $fileReader->readFile('plasceHolders.txt');
#print Dumper(@file);

my $fileHtml = $fileReader->readFile('file.html');

my $xml = Utils::XML->new();
my $langs = $xml->makeHash();

my $parser = Utils::Parser->new();

my $result = $parser->parser($fileHtml,$langs);

print Dumper($result);
