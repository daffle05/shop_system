import 'processor.dart';
import 'payment.dart';

class DummyPayment implements Payment {
  @override
  void pay(double amount) {
    if (amount >= 0) print("Dummy payment processed for ₱$amount.");
    else print("Dummy refund processed for ₱${amount.abs()}.");
  }
}

void main() {
  var processor = Processor(DummyPayment());
  processor.checkout(500.0);
  print("");
  processor.refund(200.0);
}
