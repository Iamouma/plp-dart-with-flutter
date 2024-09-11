// Main function
void main() {
  // 1. For loop that prints numbers from 1 to 10
  print("For loop: Numbers from 1 to 10");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 2. While loop that prints numbers from 10 to 1
  print("\nWhile loop: Numbers from 10 to 1");
  int j = 10; // Initialize counter
  while (j >= 1) {
    print(j);
    j--; // Decrement the counter
  }

  // 3. Do-while loop that prints numbers from 1 to 5
  print("\nDo-While loop: Numbers from 1 to 5");
  int k = 1; // Initialize counter
  do {
    print(k);
    k++; // Increment the counter
  } while (k <= 5);
}