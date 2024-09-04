import 'dart:io';

/*
 * Question: Write a Dart program that takes two numbers and performs basic arithmetic operations (addition, subtraction, multiplication, and division) on them. Print the results.
 * Instructions:
 *Input: Two numbers (integers or doubles).
 *Output: The sum, difference, product, and quotient of the two numbers.
*/

void arithmeticOperation() {
  print("Enter First Number:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  double num2 = double.parse(stdin.readLineSync()!);
  print('Sum : ${sum(num1, num2)}');
  print('Difference : ${subtract(num1, num2)}');
  print('Product : ${multiply(num1, num2)}');
  if (num2 != 0) {
    print('Division : ${divide(num1, num2)}');
    print('Remainder : ${modulo(num1, num2)}');
  } else {
    print("Division: Error -  Cannot Divide By 0");
    print("Remainder: Error - Cannot Calculate Remainder With Zero");
  }
}

double sum(double num1, double num2) => num1 + num2;

double subtract(double num1, double num2) => num1 - num2;

double multiply(double num1, double num2) => num1 * num2;

double divide(double num1, double num2) => num1 / num2;

double modulo(double num1, double num2) => num1 % num2;

/// *Question: Write a Dart program to convert a temperature given in Celsius to Fahrenheit.
/// *Instructions:
/// *Input: A temperature in Celsius (double).
/// *Output: The equivalent temperature in Fahrenheit

void temperatureConverter() {
  print('Choose A Conversion Method');
  print('Type 1 for Celsius to Fahrenheit');
  print('Type 2 for Fahrenheit to Celsius');
  print('And Press Enter');
  int value = int.parse(stdin.readLineSync()!);
  if (value == 1) {
    celsiusToFahrenheit();
  } else if (value == 2) {
    fahrenheitToCelsius();
  } else {
    print('Invalid Option: Choose Any One of the Availabe Methods');
  }
}

void celsiusToFahrenheit() {
  print('Enter the Degree in Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius * 9 / 5) + 32;
  print('$celsius°C is Converted to $fahrenheit°F ');
}

//* Similiarly

void fahrenheitToCelsius() {
  print("Enter The Degree in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit°F is Converted to $celsius°C');
}

/// *Question: Create a Dart function that checks if a number is even or odd. The function should return "Even" or "Odd".
/// *Instructions:
/// *Input: A number (integer).
/// *Output: "Even" if the number is even, "Odd" if the number is odd.

void checkOddEven() {
  print('Enter A Number:');
  int number = int.parse(stdin.readLineSync()!);
  oddEven(number);
}

void oddEven(int number) {
  if (number % 2 == 0) {
    print('Given Number $number is a Even Number');
  } else {
    print('Give Number $number is Odd Number');
  }
}

// * Similiarly In List
void checkOddEvenInList() {
  print('Enter the Length of the List You Want:');
  List<int> numbersList = [];
  int listLength = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= listLength; i++) {
    print("Enter the $i Number:");
    int number = int.parse(stdin.readLineSync()!);
    numbersList.add(number);
  }
  oddEvenInList(numbersList);
}

void oddEvenInList(List<int> numbersList) {
  List<int> oddNumbers = [];
  List<int> evenNumbers = [];
  for (int value in numbersList) {
    if (value % 2 == 0) {
      evenNumbers.add(value);
    } else {
      oddNumbers.add(value);
    }
  }
  print("Odd Numbers : $oddNumbers");
  print("Even Numbers : $evenNumbers");
}

/*
* *Question: Write a Dart program to calculate simple interest. Use the formula SI = (P * R * T) / 100.
* *Instructions:
* *Input: Principal (P), Rate of interest (R), and Time (T) (all as doubles).
* *Output: The simple interest.
*/

void calculateSimpleInterest() {
  print("Enter the Principal Amount in Double:");
  double principal = double.parse(stdin.readLineSync()!);
  print("Enter the Rate Of Interest in Percentage(Without % Symbol):");
  double rate = double.parse(stdin.readLineSync()!);
  print("Enter the Time as Number of Months");
  double period = double.parse(stdin.readLineSync()!);
  double simpleInterest = ((principal * rate * period) / 1200);
  print("Interest Amount is $simpleInterest");
  print('Actual Amount To Be Paid is ${principal + simpleInterest}');
}

/*
* *Question: Write a Dart function that checks if a number is a prime number. The function should return true if the number is prime, false otherwise.
* *Instructions:
* *Input: A number (integer).
* *Output: true if the number is prime, false otherwise
*/

void primeNumber() {
  print("Enter a Number:");
  int num = int.parse(stdin.readLineSync()!);
  bool isPrime = checkPrime(num);
  if (isPrime) {
    print('$num is a Prime Number');
  } else {
    print('$num is Not A Prime Number');
  }
}

bool checkPrime(int num) {
  if (num == 0 || num == 1) {
    return false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

//* Primes in a List

void primeInList() {
  print('Enter the Length of the List You Want:');
  List<int> numbersList = [];
  int listLength = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= listLength; i++) {
    print("Enter the $i Number:");
    int number = int.parse(stdin.readLineSync()!);
    numbersList.add(number);
  }
  checkPrimeInList(numbersList);
}

void checkPrimeInList(List<int> numbersList) {
  List<int> primes = [];
  List<int> notPrimes = [];
  for (int value in numbersList) {
    if (checkPrime(value)) {
      primes.add(value);
    } else {
      notPrimes.add(value);
    }
  }
  print(' $primes are Prime Numbers');
  print('$notPrimes Are Not Prime Numbers');
}

/*
* *Question: Write a Dart program that calculates the factorial of a given number using a loop.
* *Instructions:
* *Input: A number (integer).
* *Output: The factorial of the number.
*/

void factorial() {
  print('Enter a Number:');
  int num = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }
  print("Factorial of $num is $factorial");
}

// * Similiarly Factorial Using Recursion

void checkFactorialRecursion() {
  print('Enter a Number:');
  int num = int.parse(stdin.readLineSync()!);
  int factorial = recursiveFactorial(num);
  print('Factorial of $num is $factorial');
}

int recursiveFactorial(int num) {
  if (num == 1 || num == 0) {
    return 1;
  }
  return num * recursiveFactorial(num - 1);
}

/*
* *Question: Write a Dart function that checks if a given string is a palindrome (a word that reads the same forwards and backwards).
* *Instructions:
* *Input: A string (word).
* *Output: true if the string is a palindrome, false otherwise.
*/

void pallindrome() {
  print("Enter a Text:");
  String text = stdin.readLineSync()!;
  String normalizedText = text.replaceAll(' ', '').toLowerCase();
  String reversedText = '';
  // *using Inbuilt Functions
  // List<String> textList = text.split('');
  // reversedText = textList.reversed.join('');
  // *using normal method
  for (int i = normalizedText.length - 1; i >= 0; i--) {
    reversedText += normalizedText[i];
  }
  print(reversedText);
  if (normalizedText == reversedText) {
    print('$text is a Pallindrome');
  } else {
    print('$text is Not a Pallindrome');
  }
}

/*
* *Question: Write a Dart program that calculates the sum of the digits of a given number.
* *Instructions:
* *Input: A number (integer).
* *Output: The sum of its digits.
*/

void sumOfDigits() {
  print("Enter a Number:");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  print(sum);
}

/*
* *Question: Write a Dart function that takes a string and returns its reverse.
* *Instructions:
* *Input: A string.
* *Output: The reverse of the string.
*/

void reverseString() {
  print("Enter a Text:");
  String text = stdin.readLineSync()!;
  String reversedText = '';
  //* normal function
  // for (int i = text.length - 1; i >= 0; i--) {
  //   reversedText += text[i];
  // }
  //* Inbuilt Function
  reversedText = text.split('').reversed.join('');
  print(reversedText);
}

/*
* *Question: Create a Dart program that generates the multiplication table for a given number.
* *Instructions:
* *Input: A number (integer).
* *Output: The multiplication table of that number up to 10.
*/

void multiplicationTable() {
  print("Enter the Table Number:");
  int num = int.parse(stdin.readLineSync()!);
  print("Enter the End Number:");
  int endNumber = int.parse(stdin.readLineSync()!);
  createTable(num, endNumber);
}

void createTable(int num, int endNumber) {
  for (int i = 1; i <= endNumber; i++) {
    print('$num x $i = ${num * i}');
  }
}


//Questions

// Here are some more Dart basics questions with instructions to help you practice:

// 1. Basic Arithmetic Operations
// Question: Write a Dart program that takes two numbers and performs basic arithmetic operations (addition, subtraction, multiplication, and division) on them. Print the results.
// Instructions:
// Input: Two numbers (integers or doubles).
// Output: The sum, difference, product, and quotient of the two numbers.


// 2. Temperature Converter
// Question: Write a Dart program to convert a temperature given in Celsius to Fahrenheit.
// Instructions:
// Input: A temperature in Celsius (double).
// Output: The equivalent temperature in Fahrenheit.


// 3. Even or Odd
// Question: Create a Dart function that checks if a number is even or odd. The function should return "Even" or "Odd".
// Instructions:
// Input: A number (integer).
// Output: "Even" if the number is even, "Odd" if the number is odd.


// 4. Simple Interest Calculator
// Question: Write a Dart program to calculate simple interest. Use the formula SI = (P * R * T) / 100.
// Instructions:
// Input: Principal (P), Rate of interest (R), and Time (T) (all as doubles).
// Output: The simple interest.


// 5. Prime Number Check
// Question: Write a Dart function that checks if a number is a prime number. The function should return true if the number is prime, false otherwise.
// Instructions:
// Input: A number (integer).
// Output: true if the number is prime, false otherwise.


// 6. Factorial Calculation
// Question: Write a Dart program that calculates the factorial of a given number using a loop.
// Instructions:
// Input: A number (integer).
// Output: The factorial of the number.


// 7. Palindrome Check
// Question: Write a Dart function that checks if a given string is a palindrome (a word that reads the same forwards and backwards).
// Instructions:
// Input: A string (word).
// Output: true if the string is a palindrome, false otherwise.


// 8. Sum of Digits
// Question: Write a Dart program that calculates the sum of the digits of a given number.
// Instructions:
// Input: A number (integer).
// Output: The sum of its digits.


// 9. Reverse a String
// Question: Write a Dart function that takes a string and returns its reverse.
// Instructions:
// Input: A string.
// Output: The reverse of the string.


// 10. Multiplication Table
// Question: Create a Dart program that generates the multiplication table for a given number.
// Instructions:
// Input: A number (integer).
// Output: The multiplication table of that number up to 10.