import 'payment.dart';

class ServiceFeePayment implements Payment {
  @override
  void pay(double amount) {
    // Add a service fee of 10
    double total = amount + 10;
    print("ServiceFeePayment: Paid ₱$total (₱10 service fee included).");
  }
}

