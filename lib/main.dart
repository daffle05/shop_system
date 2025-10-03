import 'processor.dart';
import 'service_fee_payment.dart';
import 'cashback.dart';   // <-- use your file name here

void main() {
  print("=== Demo: Processor with ServiceFeePayment (Service Fee) ===");
  var processorA = Processor(ServiceFeePayment());
  processorA.checkout(1500.0);
  processorA.refund(300.0);

  print("\n=== Demo: Processor with CashbackSystem (Cashback) ===");
  var processorB = Processor(CashbackSystem());
  processorB.checkout(2000.0);
  processorB.refund(500.0);
}
