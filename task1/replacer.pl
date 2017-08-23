#!/usr/bin/perl

use strict;



sub readFile
{
    my ($fileName) = @_;
    my @data = ();
    open my $fh,"< $fileName";
    binmode($fh);
    while(<$fh>)
    {
        chomp($_);
        push @data,$_;
    }
    close $fh;
 #   print @data;
    return join("\n",@data) unless(wantarray);
    
    return @data;
}

sub makeHash
{
    my @data = @_;
    my %lengs = ();
   # print %lengs; 
    while(@data)
    {
        my $line = shift @data;
        my($key,$value) = split('==' ,$line);

        $lengs{$key} = $value if($key);
    }
    return  \%lengs;
}

my $fileTxt = 'plasceHolders.txt';
my @langs = readFile($fileTxt);

my $fileHtml = 'file.html';

my $html = readFile($fileHtml);

my $langs = makeHash(@langs);

$html =~ s/(LANG_\w+)/$langs->{$1}/gse;

print $html;
#sub replacer
#{
#    my ($replace) = @_;
#    my $html = readFile('file.html');
   #print $$html; 
#    foreach my $key(keys $replace)
#    {
#        my $html =~ s/(\LANG_\w+)/$replace->{$1}/gse;
#print $1;
#    }
#    return $html;
    
#}
#my @a = readFile('plasceHolders.txt');
#my $c = makeHash(@a);
#my $x = replacer($c);
#print @a;
#print $c;
#print  $x;

