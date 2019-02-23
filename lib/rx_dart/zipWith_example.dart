import 'dart:convert';

class Invoice {
  final User user;
  final Product product;

  Invoice(this.user, this.product);

  printInvoice() {
    print(user.toString());
    print(product.toString());
  }
}

class User {
  String address;
  String phoneNumber;
  int age;
  String name;

  User(this.name, this.address, this.phoneNumber, this.age);

  @override
  String toString() {
    return 'User{name: $name}';
  }

  User.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    address = json['address'];
    phoneNumber = json['phoneNumber'];
    age = json['age'];
  }

}

class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() {
    return 'Product{name: $name, price: $price}';
  }

  Product.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    this.name = json['name'];
    price = json['price'];
  }
}

// Simulating an HTTP call to an REST API returning a Product as JSON string
Future<String> getProduct() async {
  print("Started getting product");
  await Future.delayed(Duration(seconds: 2));
  print("Finished getting product");
  return '{"name": "Flux compensator", "price": 99999.99}';
}

// Simulating an HTTP call to an REST API returning a User as JSON string
Future<String> getUser() async {
  print("Started getting User");
  await Future.delayed(Duration(seconds: 4));
  print("Finished getting User");
  return '{"name": "Jon Doe", "address": "New York", "phoneNumber":"424242","age": 42 }';
}
