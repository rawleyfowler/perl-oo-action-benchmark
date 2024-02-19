use feature 'class';
no warnings;

class Action {
    field $name : param;
    field $age : param;

    method execute () {
        return +{ name => $name, age => $age };
    }
}

my $name = 'Tim';
my $age  = 12;
for ( 1 .. 1000000 ) {
    Action->new( name => $name, age => $age )->execute();
}
