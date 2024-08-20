// Abstract class
abstract class Shape {

// Abstract method to calculate area
double calculateArea();

// Concrete method
void printInfo() {
print('This is a shape.');
}
}

// Concrete class 1
class Circle extends Shape {
double radius;

Circle(this.radius);

@override
double calculateArea() {
return 3.14 * radius * radius;
}
}

// Concrete class 2
class Rectangle extends Shape {
double width, height;
Rectangle(this.width, this.height);

@override
double calculateArea() {
return width * height;
}
}

void main() {
// Create instances of concrete classes
Circle myCircle = Circle(5.0);
Rectangle myRectangle = Rectangle(4.0, 6.0);

// Use the common interface provided by the abstract class
print('Circle Area: ${myCircle.calculateArea()}');
print('Rectangle Area: ${myRectangle.calculateArea()}');

// Concrete method from the abstract class
myCircle.printInfo();
myRectangle.printInfo();
}