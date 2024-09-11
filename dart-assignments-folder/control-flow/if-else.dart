// Main function
void main() {
  // Check if a number is positive, negative, or zero
  int number = 10; // You can change this value to test different cases
  checkNumber(number);
  
  // Check if a person is eligible to vote
  int age = 20; // You can change this value to test different ages
  checkVotingEligibility(age);
}

// Function to check if a number is positive, negative, or zero
void checkNumber(int num) {
  if (num > 0) {
    print("The number $num is positive.");
  } else if (num < 0) {
    print("The number $num is negative.");
  } else {
    print("The number is zero.");
  }
}

// Function to check if a person is eligible to vote
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}