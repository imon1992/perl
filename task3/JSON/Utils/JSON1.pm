package Utils::JSON1;

use strict;

use JSON;

use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    my $self ||={};
    return bless $self,$class;
}
sub readFile
{
     my ($self,$fileName) = @_;
     my @data = ();
     my $a;
     open my $fh,"< $fileName";
     binmode($fh);
     while(<$fh>)
     {
	     $a .= $_;
         chomp($_);
         # push @data,$_;
     }
     close $fh;
     # return join("\n",@data) unless(wantarray);

     return $a;
}

sub _decodeJSON {
	my ($JSONText) = @_;
    my $hashRef = decode_json($JSONText);
    return @$hashRef;
}

sub makeHash
{
     my ($self,$jsonFile) = @_;
     # my$c = $self->readFile($jsonFile);
     my @json = decode_json($self->readFile('$jsonFile'));
     print Dumper(@json);
     # print Dumper($c);
     # my $simple = XML::Simple->new();
     # my $data   =  $simple->XMLin('myXML.xml');
     
     #return $data;
 }

1;

