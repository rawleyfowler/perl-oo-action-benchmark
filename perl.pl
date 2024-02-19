package Action;

use strict;
use warnings;

sub execute {
    my $self = shift;
    return +{ name => $self->{name}, age => $self->{age} };
}

sub new {
    my ( $class, $name, $age ) = @_;
    my $self = { name => $name, age => $age };
    return bless $self, $class;
}

1;

package main;

use strict;
use warnings;

my $name = 'Tim';
my $age  = 12;
for ( 1 .. 1000000 ) {
    my $user = Action->new( $name, $age )->execute();
}
