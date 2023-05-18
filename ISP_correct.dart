//Interface Segregation Principle 

abstract class Worker {
  void work();
}

abstract class Eater {
  void eat();
}

class HumanWorker implements Worker, Eater {
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
  // Robots don't need to implement the eat() method anymore
}

void main() {
  final human = HumanWorker();
  human.work();
  human.eat();

  final robot = RobotWorker();
  robot.work();
  // We don't call robot.eat() here because RobotWorker doesn't implement Eater
}
