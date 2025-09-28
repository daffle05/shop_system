import 'processor.dart';
import 'payment.dart';
import 'implementation_a.dart';

class DummyPayment implements Payment {
  @override
  void pay(double amount) {
    if (amount >= 0) print("Dummy payment processed for ₱$amount.");
    else print("Dummy refund processed for ₱${amount.abs()}.");
  }
}

void main() {
  print("=== Using DummyPayment ===");
  var processor1 = Processor(DummyPayment());
  processor1.checkout(500.0);
  processor1.refund(200.0);

  print("\n=== Using ImplementationA ===");
  var processor2 = Processor(ImplementationA());
  processor2.checkout(1500.0);
  processor2.refund(300.0);
}

