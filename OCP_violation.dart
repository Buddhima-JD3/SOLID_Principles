//open-close principle violation

class Shape {
  final String shapeType;

  // Parameters for Rectangle
  double? length;
  double? width;

  // Parameters for Circle
  double? radius;

  Shape.rectangle(this.length, this.width) : shapeType = 'rectangle';
  Shape.circle(this.radius) : shapeType = 'circle';

  double area() {
    if (shapeType == 'rectangle') {
      return length! * width!;
    } else if (shapeType == 'circle') {
      return 3.14 * radius! * radius!;
    } else {
      throw Exception('Unknown shape type');
    }
  }
}

void main() {
  final rectangle = Shape.rectangle(4, 5);
  print(rectangle.area());

  final circle = Shape.circle(3);
  print(circle.area());
}
