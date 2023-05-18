//Liskov Substitution Principle Violation
abstract class Bird {
  void fly();
}

class Sparrow extends Bird {
  @override
  void fly() {
    print("Sparrow flying");
  }
}

class Ostrich extends Bird {
  @override
  void fly() {
    throw Exception("Ostriches can't fly");
  }
}

void letItFly(Bird bird) {
  bird.fly();
}

void main() {
  final sparrow = Sparrow();
  letItFly(sparrow);  // This is fine

  final ostrich = Ostrich();
  letItFly(ostrich);  // This will throw an exception
}
