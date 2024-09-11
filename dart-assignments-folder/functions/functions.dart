// Main function
void main() {
  // List of item prices in the shopping cart
  List<double> itemPrices = [15.99, 23.50, 9.99, 7.99, 49.99];

  // 1. Use an anonymous function to filter out items below a certain threshold (e.g., $10)
  List<double> filteredPrices = itemPrices.where((price) => price >= 10.0).toList();
  print("Filtered Prices (items >= \$10): $filteredPrices");

  // 2. Apply a discount to all items in the cart using a higher-order function
  double discountPercentage = 10.0; // 10% discount
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) {
    return price - (price * discountPercentage / 100);
  });
  print("Discounted Prices (after $discountPercentage% discount): $discountedPrices");

  // 3. Calculate the total price with optional tax calculation
  double totalPrice = calculateTotal(discountedPrices, taxRate: 8.0); // 8% tax
  print("Total Price (after tax): \$${totalPrice.toStringAsFixed(2)}");

  // 4. Apply a special discount using a recursive factorial-based discount
  int itemCount = discountedPrices.length;
  double factorialDiscountPercentage = calculateFactorialDiscount(itemCount);
  double finalPrice = totalPrice - (totalPrice * factorialDiscountPercentage / 100);
  print("Final Price (after $factorialDiscountPercentage% factorial discount): \$${finalPrice.toStringAsFixed(2)}");
}

// Standard Function: Calculate the total price with optional tax calculation
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  return subtotal + (subtotal * taxRate / 100);
}

// Higher-Order Function: Apply a discount to all items in the list
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Recursive Function: Calculate a special discount based on the factorial of the number of items
double calculateFactorialDiscount(int n) {
  if (n <= 1) {
    return 1.0;
  }
  return n * calculateFactorialDiscount(n - 1);
}