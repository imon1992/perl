package Utils::Parser;

use strict;

sub parser;

sub new
{
    my $class = ref($_[0])||$_[0];
    my $self ||={};
    return bless $self,$class;
}


sub parser
{
   my($self,$html,$langs) = @_; 

    $html =~ s/(LANG_\w+)/$langs->{$1}/gse;
    return $html;
}

1;
