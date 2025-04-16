class BankAccount {
  double _balance = 0;

  double get balance {
    return _balance;
  }

  set deposit(double value) {
    if (value > 0) {
      _balance += value;
    } else {
      print('Error: Deposit not positive value');
    }
  }
}

void main() {
  BankAccount accountone = BankAccount();

  accountone.deposit = 500;
  print(accountone.balance);

}
