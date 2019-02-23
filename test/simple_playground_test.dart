import 'package:rxdart/rxdart.dart';
import 'package:simple_playground/rx_dart/zipWith_example.dart';
import 'package:test/test.dart';

void main() {
  test('zipWith', () async {
    var userObservable =
    Observable.fromFuture(getUser()).map<User>((jsonString) => User.fromJson(jsonString));

    var productObservable = Observable.fromFuture(getProduct())
        .map<Product>((jsonString) => Product.fromJson(jsonString));

    Observable<Invoice> invoiceObservable = userObservable.zipWith<Product, Invoice>(
        productObservable, (user, product) => Invoice(user, product));


    print("Start listening for invoices");
    invoiceObservable.listen((invoice) => invoice.printInvoice());

    // this is only to prevent the testing framework from killing this process before all items on the Stream are processed
    await Future.delayed(Duration(seconds: 5));
  });
}
