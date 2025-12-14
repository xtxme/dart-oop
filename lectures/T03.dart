//polymorphism = object สามารถที่จะถูก treat ให้เป็น parent class เดียวกันได้ + มี method ชื่อเดียวกันแต่ทำตัวต่างกันได้

void main () {
  
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle({required this.radius}); //constructor

  @override
  double area() {
    // TODO: implement area
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle({required this.height, required this.width});
  @override
  double area() {
    // TODO: implement area
    return width * height;
  }
}