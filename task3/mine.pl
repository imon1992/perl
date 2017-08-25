#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('Utils');

use Utils::File;
#use Utils::Substitutor;
use Utils::Parser;
use Utils::DbHash;

use XML::Simple;
use Utils::XML;


my $simple = XML::Simple->new();
my $data   =  $simple->XMLin('myXML.xml');

print Dumper($data);
my $fileReader = Utils::File->new();
my @file = $fileReader->readFile('plasceHolders.txt');
#print Dumper(@file);

my $fileHtml = $fileReader->readFile('file.html');
#my $sub = Utils::Substitutor->new();

my $db = Utils::DbHash->new();
my $dbh = $db->dbConnect();
my $langs = $db->makeHash($dbh);
#print Dumper($res); 

#my $langs = $sub->makeHash(@file);

#print Dumper($langs);

my $xml = Utils::XML->new();

my $res = $xml->makeHash($data);
my $parser = Utils::Parser->new();
print Dumper($res);
#my $result = $parser->parser($fileHtml,$langs);

#print Dumper($result);
