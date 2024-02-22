package Action;

use strict;
use warnings;

sub new {
    my ( $self, %args ) = @_;

    return sub {
        my $key = shift;

        if ( $key eq 'execute' ) {
            return +{ name => $args{name}, age => $args{age} };
        }

        return $args{$key};
    }
}

1;

package main;

use strict;
use warnings;

my $name = 'Tim';
my $age  = 12;
for ( 1 .. 1000000 ) {
    my $user = Action->new( name => $name, age => $age )->('execute');
}
