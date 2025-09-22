import 'payment.dart';

class Processor {
  final Payment _paymentMethod;

  Processor(this._paymentMethod);

  void checkout(double amount) {
    print("Checking out items worth ₱$amount...");
    _paymentMethod.pay(amount);
  }

  void refund(double amount) {
    print("Refunding ₱$amount to customer...");
    _paymentMethod.pay(-amount);
  }
}
