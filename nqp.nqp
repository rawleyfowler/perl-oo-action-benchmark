class Action {
    has $!name;
    has $!age;

    method execute() {
        nqp::hash('name', $!name, 'age', $!age)
    }
}

my $name := 'Tim';
my $age  := 12;
my int $i;
while ++$i < 1000000 {
    my $user := Action.new(:$name, :$age).execute();
}
