// cashback.dart
import 'payment.dart';

class CashbackSystem implements Payment {
  @override
  void pay(double amount) {
    if (amount > 1000) {
      double cashback = amount * 0.10; // 10% cashback
      print("CashbackSystem: Payment of ₱$amount processed with ₱$cashback cashback credited.");
    } else {
      print("CashbackSystem: Payment of ₱$amount processed normally (no cashback).");
    }
  }
}
