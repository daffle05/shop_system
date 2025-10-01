import 'processor.dart';
import 'implementation_a.dart';
import 'cashback.dart';   // <-- use your file name here

void main() {
  print("=== Demo: Processor with Implementation A (Service Fee) ===");
  var processorA = Processor(ImplementationA());
  processorA.checkout(1500.0);
  processorA.refund(300.0);

  print("\n=== Demo: Processor with CashbackSystem (Cashback) ===");
  var processorB = Processor(CashbackSystem());
  processorB.checkout(2000.0);
  processorB.refund(500.0);
}
