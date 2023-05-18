//Dependecy Inversion Principle 
abstract class Charger {
  void charge();
}

class StandardCharger implements Charger {
  @override
  void charge() {
    print("Standard charging...");
  }
}

class FastCharger implements Charger {
  @override
  void charge() {
    print("Fast charging...");
  }
}

class MobileDevice {
  Charger _charger;

  MobileDevice(this._charger);

  void startCharging() {
    _charger.charge();
  }
}

void main() {
  final standardCharger = StandardCharger();
  final fastCharger = FastCharger();

  final device1 = MobileDevice(standardCharger);
  device1.startCharging();

  final device2 = MobileDevice(fastCharger);
  device2.startCharging();
}
