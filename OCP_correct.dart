//open-close principle 

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

void main() {
  final shapes = [
    Rectangle(4, 5),
    Circle(3),
  ];

  for (final shape in shapes) {
    print(shape.area());
  }
}
