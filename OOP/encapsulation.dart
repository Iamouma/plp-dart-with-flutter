class Circle {

// Private variable
double _radius;
//double radius;

// Constructor
Circle(this._radius);

// Getter for the radius
double get radius => _radius;

// Setter for the radius with validation
set radius(double value) {

if (value > 0) {

_radius = value;

} else {

print('Invalid radius. It must be greater than 0.');
}
}

// Method to calculate the area
double calculateArea() {

return 3.14 * _radius * _radius;
}
}

void main() {
// Create an instance/object  of the Circle class
Circle myCircle = Circle(5.0);

// Access the radius using the getter
print('Initial Radius of the Circle: ${myCircle.radius}');

// Update the radius using the setter(for updates)
myCircle.radius = 7.0;

// Access the updated radius and calculate the area
print('Updated/New  Radius: ${myCircle.radius}');

print('Area: ${myCircle.calculateArea()}');

}
