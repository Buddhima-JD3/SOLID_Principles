//Dependecy Inversion Principle Violation
class Charger {
  void charge() {
    print("Charging...");
  }
}

class MobileDevice {
  Charger? _charger;

  MobileDevice() {
    _charger = Charger();
  }

  void startCharging() {
    _charger?.charge();
  }
}

void main() {
  final device = MobileDevice();
  device.startCharging();
}

