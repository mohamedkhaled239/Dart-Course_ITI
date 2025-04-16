class Car {
  final String brand;
  final String model;
  final int year;

  Car({required this.brand, required this.model, required this.year});

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}

void main() {
  Car car1 = Car(brand: 'Mercedes', model: 'E200', year: 2025);
  Car car2 = Car(brand: 'Kia ', model: 'Sportage', year: 2014);

  car1.displayInfo();
  print('-----');
  car2.displayInfo();
}
