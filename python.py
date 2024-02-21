# Written by Curtis Poe in Perl Foundation Slack #perl-and-raku
class Action:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def execute(self):
        return {"name": self.name, "age": self.age}


name = 'Tim'
age = 12
for _ in range(1000000):
    user = Action(name, age).execute()
