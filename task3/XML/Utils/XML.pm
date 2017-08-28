package Utils::XML;

use strict;

use XML::Simple;

use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    my $self ||={};
    return bless $self,$class;
}


sub makeHash
{
     my $simple = XML::Simple->new();
     my $data   =  $simple->XMLin('myXML.xml');
     
     return $data;
 }

1;

