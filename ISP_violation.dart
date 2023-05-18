//Interface Segregation Principle (ISP) Violation
abstract class Worker {
  void work();
  void eat();
}

class HumanWorker implements Worker {
  @override
  void work() {
    print("Human working");
  }

  @override
  void eat() {
    print("Human eating");
  }
}

class RobotWorker implements Worker {
  @override
  void work() {
    print("Robot working");
  }

  @override
  void eat() {
    // Robots don't eat!
    throw UnimplementedError();
  }
}

void main() {
  final human = HumanWorker();
  human.work();
  human.eat();

  final robot = RobotWorker();
  robot.work();
  robot.eat();  // This will throw an exception
}
