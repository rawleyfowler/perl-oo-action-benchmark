<?php
class Action
{
    public $name; public $age;

    public function __construct($name, $age) {
        $this->name = $name; $this->age = $age;
    }

    public function execute () {
        return ['name' => $this->name, 'age' => $this->age];
    }
}

$name = 'Tim'; $age  = 12;
foreach (range(1, 1000000) as $i) {
    $user = (new Action($name, $age))->execute();
    $user = null;
}

?>
