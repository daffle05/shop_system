import 'payment.dart';

class ImplementationA implements Payment {
  @override
  void pay(double amount) {
    if (amount > 1000) {
      print("Implementation A: Large payment of ₱$amount processed with 5% service fee.");
    } else {
      print("Implementation A: Payment of ₱$amount processed normally.");
    }
  }
}

