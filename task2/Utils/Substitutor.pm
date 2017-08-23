package Utils::Substitutor;

use strict;
use warnings;

sub makeHash;

sub new
{
    my $class = ref($_[0])||$_[0];
    my $self ||={};
    return bless $self,$class;
}


sub makeHash
{
    my ($self,@data) = @_;
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

1;
