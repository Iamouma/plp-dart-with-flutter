// Define a class named Dog
class Dog {
  // Declare instance variables for name, age, and breed
  String name;
  int age;
  String breed;

  // Parameterized constructor for the Dog class
  Dog(this.name, this.age, this.breed);

  // Method/ function  to make the dog bark
  void bark() => print("$name barks!");
  
  // Method to simulate the dog eating
  void eat() => print("$name is eating.");
  
  // Method to simulate the dog sleeping
  void sleep() => print("$name is sleeping.");
}

// Main function
void main() {
  // Create an instance(an object) of the Dog class named myDog
  Dog myDog = Dog("Buddy", 3, "Labrador");
  
  // Print information about the dog (name, age, breed)
  print("Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.breed}");
  
  // Call the bark method of the Dog class
  myDog.bark();
  
  // Call the eat method of the Dog class
  myDog.eat();
  
  // Call the sleep method of the Dog class
  myDog.sleep();
}
