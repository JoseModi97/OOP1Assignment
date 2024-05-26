// Define the base class Animal
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('The $name makes a sound');
  }
}

// Define derived classes for specific types of animals
class Mammal extends Animal {
  Mammal(String name) : super(name);

  @override
  void makeSound() {
    print('The $name makes mammal sound');
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print('The $name makes bird sound');
  }
}

class Reptile extends Animal {
  Reptile(String name) : super(name);

  @override
  void makeSound() {
    print('The $name makes reptile sound');
  }
}

void main() {
  // Create instances of different animals
  var cat = Mammal('Cat');
  var sparrow = Bird('Sparrow');
  var snake = Reptile('Snake');

  // Demonstrate the overridden method
  cat.makeSound();
  sparrow.makeSound();
  snake.makeSound();

  // Demonstrate a loop
  List<Animal> animals = [cat, sparrow, snake];
  for (var animal in animals) {
    animal.makeSound();
  }
}
