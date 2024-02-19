package Action;

use Moo;
use Types::Standard qw(Int Str);
use namespace::clean;

has name => (
    is       => 'ro',
    isa      => Str,
    required => 1
);

has age => (
    is       => 'ro',
    isa      => Int,
    required => 1
);

sub execute {
    my $self = shift;
    return +{ name => $self->name, age => $self->age };
}

1;

package main;

use strict;
use warnings;

my $name = 'Tim';
my $age  = 12;
for ( 1 .. 1000000 ) {
    my $user = Action->new( name => $name, age => $age )->execute();
}
