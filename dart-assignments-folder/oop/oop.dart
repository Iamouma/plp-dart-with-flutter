// Abstract class representing a general Product
abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  // Abstract method to be implemented by subclasses
  double calculateFinalPrice();
}

// Subclass representing a regular product
class RegularProduct extends Product {
  RegularProduct(String name, double price) : super(name, price);

  // Overriding calculateFinalPrice method for regular products
  @override
  double calculateFinalPrice() {
    return price;
  }
}

// Subclass representing a discounted product
class DiscountedProduct extends Product {
  double discount;

  DiscountedProduct(String name, double price, this.discount) : super(name, price);

  // Overriding calculateFinalPrice method for discounted products
  @override
  double calculateFinalPrice() {
    return price * (1 - discount);
  }
}

// Class representing the ShoppingCart, demonstrating encapsulation
class ShoppingCart {
  // Private variable to store items in the cart
  List<Product> _items = [];

  // Method to add an item to the cart
  void addItem(Product item) {
    _items.add(item);
  }

  // Method to calculate the total price of the cart
  double calculateTotal() {
    double total = 0;
    for (var item in _items) {
      total += item.calculateFinalPrice();
    }
    return total;
  }

  // Method to display items in the cart
  void displayItems() {
    for (var item in _items) {
      print('Item: ${item.name}, Price: \$${item.calculateFinalPrice().toStringAsFixed(2)}');
    }
  }
}

void main() {
  // Creating instances of RegularProduct and DiscountedProduct
  var item1 = RegularProduct('Laptop', 1000.0);
  var item2 = DiscountedProduct('Smartphone', 500.0, 0.1); // 10% discount
  var item3 = DiscountedProduct('Headphones', 200.0, 0.2); // 20% discount

  // Creating an instance of ShoppingCart
  var cart = ShoppingCart();

  // Adding items to the cart
  cart.addItem(item1);
  cart.addItem(item2);
  cart.addItem(item3);

  // Displaying items in the cart
  print('Items in the Cart:');
  cart.displayItems();

  // Calculating and displaying the total price of the cart
  print('Total Price: \$${cart.calculateTotal().toStringAsFixed(2)}');
}