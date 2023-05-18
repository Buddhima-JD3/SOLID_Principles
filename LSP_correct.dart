//Liskov Substitution Principle 

abstract class Bird {}

abstract class FlyingBird extends Bird {
  void fly();
}

class Sparrow extends FlyingBird {
  @override
  void fly() {
    print("Sparrow flying");
  }
}

class Ostrich extends Bird {
  // Ostriches can't fly, so we don't implement the fly() method here
}

void letItFly(FlyingBird bird) {
  bird.fly();
}

void main() {
  final sparrow = Sparrow();
  letItFly(sparrow);  // This is fine

  final ostrich = Ostrich();
  // We can't call letItFly(ostrich) here because Ostrich is not a FlyingBird
}
