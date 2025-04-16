class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog Sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat Sound');
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.makeSound();
  c.makeSound();
}
