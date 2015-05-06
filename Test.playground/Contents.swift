class Animal {
    var name = "default"
    var age = 5
    
    func getDetails() -> String {
        return "This animal's name is \(name) it is \(age) years old."
    }
    
    
}

class Dog:Animal {
    func woof() -> String{
        return "Woof woof woof"
    }
}

class Cat:Animal {
    func meow() ->String {
        return "Mew meow meow"
    }
}

var RyansDog = Dog()
RyansDog.name = "Abbey"
RyansDog.age = 8
RyansDog.woof()
RyansDog.getDetails()

var RyansCat = Cat();
RyansCat.name = "Hugo"
RyansCat.age = 1
RyansCat.meow()
RyansCat.getDetails()

var JonsCat = Cat()