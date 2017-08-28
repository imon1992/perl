#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('Utils');

use Utils::File;
use Utils::Parser;
use Utils::JSON1;

my $fileReader = Utils::File->new();
my @file = $fileReader->readFile('plasceHolders.txt');
#print Dumper(@file);

my $fileHtml = $fileReader->readFile('file.html');

my $xml = Utils::JSON1->new();
my $langs = $xml->makeHash('JSON.json');

# print Dumper($langs);

my $parser = Utils::Parser->new();

my $result = $parser->parser($fileHtml,$langs);

print Dumper($result);
