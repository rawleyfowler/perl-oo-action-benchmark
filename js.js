class Action {
    constructor(name, age) { this.age = age; this.name = name; }
    execute() { return { name: this.name, age: this.age }; }
};
var u;
var name = 'Tim';
var age = 12;
for (let i = 0; i < 1000000; i++) { 
    u = new Action(name, age).execute();
}
