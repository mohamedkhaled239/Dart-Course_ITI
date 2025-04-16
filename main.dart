import 'dart:io';

void main() {
  // 1) BMI Calculator
  //BMI_Calculator();

  // 2)AVERAGE CALCULATOR
  // averageCalculator();

  // 3)Simple ATM Simulation
  //Simple_ATM_Simulation();

  // 4)Palindrome Checker
  //  String word = stdin.readLineSync()!;
  // String word = "level";
  // print('Is $word a palindrome? ${isPalindrome(word)}');

  // 5)Shopping Cart
  ShoppingCart();
}

void BMI_Calculator() {
  // double height = double.parse(stdin.readLineSync()!);
  double height = 1.95;
  double weight = 70;
  double bmi = weight / (height * height);

  if (bmi < 18.5) {
    print("Category :Underweight");
  } else if (bmi < 25) {
    print("Category :Normal ");
  } else if (bmi < 30) {
    print("Category :Overweight");
  } else {
    print("Category :Obese");
  }

  print("bmi is: ${bmi.toStringAsFixed(2)}");
}

void averageCalculator() {
  List grades = [85, 90, 78, 92];
  double sum = 0;

  // for (int i = 0; i < grades.length; i++) {
  //     sum += grades[i];
  // }
  for (int grade in grades) {
    sum += grade;
  }

  double average = sum / grades.length;
  print("Average grade: ${average.toStringAsFixed(2)}");
}

void Simple_ATM_Simulation() {
  double balance = 1000.0;

  print("Choose operation:");
  print("1. Check Balance");
  print("2. Deposit");
  print("3. Withdraw");

  int operation = int.parse(stdin.readLineSync()!);

  switch (operation) {
    case 1:
      print("Your current balance is: \$${balance.toStringAsFixed(2)}");
      break;

    case 2:
      print("Enter deposit amount:");
      double amount = double.parse(stdin.readLineSync()!);
      balance += amount;
      print(
        "Deposited successfully. New balance: \$${balance.toStringAsFixed(2)}",
      );
      break;

    case 3:
      print("Enter withdrawal amount:");
      double amount = double.parse(stdin.readLineSync()!);
      if (amount <= balance) {
        balance -= amount;
        print(
          "Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}",
        );
      } else {
        print(
          "Error: Insufficient funds. Current balance: \$${balance.toStringAsFixed(2)}",
        );
      }
      break;

    default:
      print("Invalid operation selected.");
  }
}

bool isPalindrome(String word) {
  String reversedWord = word.split('').reversed.join('');
  return word == reversedWord;
}

void ShoppingCart() {
  Map<String, double> cart = {};

  print("Enter number of items in the cart:");
  int? itemCount = int.tryParse(stdin.readLineSync()!);

  for (int i = 0; i < itemCount!; i++) {
    print("Enter item ${i + 1} name:");
    String? itemName = stdin.readLineSync();

    print("Enter price for $itemName:");
    double? price = double.tryParse(stdin.readLineSync()!);

    if (itemName != null && price != null) {
      cart[itemName] = price;
    } else {
      print("Invalid input, skipping item.");
    }
  }

  print("Enter discount ");
  double? discount = double.tryParse(stdin.readLineSync()!);
  double total = cart.values.fold(0.0, (sum, price) => sum + price);
  print("\nCart total: \$${total}");

  if (discount != null && discount > 0.0 && discount < 1.0) {
    double discountedTotal = total * (1 - discount);
    print("With discount: \$${discountedTotal}");
  }
}
