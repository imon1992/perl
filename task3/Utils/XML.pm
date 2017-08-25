 package Utils::XML;

use strict;
use warnings;
use XML::Simple;
#sub makeHash;

use Data::Dumper;

sub new
{
  my $class = ref($_[0])||$_[0];
    my $self ||={};
    return bless $self,$class;
}

sub getXml
{
   # my $simple = XML::Simple->new();
#my $data   =  XML::Simple->XMLin('../my.xml');
}


sub makeHash
{
    my ($self,$xml) = @_;
    my %lengs = ();
    print Dumper($xml);
    foreach my $key (keys$xml)
    {
        $lengs{$key} = $xml{$key};
        print Dumper($key);
       print ($xml);
    }
    print Dumper (%lengs);

#    my %lengs = ();
    # print %lengs;
  #    while(@data)
    #  {
   #      my $line = shift @data;
    #     my($key,$value) = split('==' ,$line);

     #    $lengs{$key} = $value if($key);
     # }
      return  \%lengs;
 }

1;

