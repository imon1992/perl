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
     
     open my $fh,"< $fileName";
     binmode($fh);
     
     local $/;
     my $fileContent = <$fh>;
     
     return $fileContent;
}

sub _decodeJSON 
{
    my ($JSONText) = @_;
    my $hashRef = decode_json($JSONText);
    return @$hashRef;
}

sub makeHash
{
     my ($self,$jsonFile) = @_;
     my $jsonFile = $self->readFile($jsonFile);
     my $json = decode_json($jsonFile);
     my %lengs = ();
     
     foreach my $k (keys $json)
     {
          $lengs{$k} = $json->{$k};
          print Dumper($json->{$k})
     }
     
     return \%lengs;
   
 }

1;

