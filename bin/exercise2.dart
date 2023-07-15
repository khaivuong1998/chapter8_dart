import 'dart:io';

void main() {
  print('nhập đơn giá');
  String string = stdin.readLineSync() ?? "";
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  // final oCcy = new NumberFormat("#,##0.0", "en_US");
  int unitPrice = 0;
  if (string.isNotEmpty && NUMERIC.hasMatch(string)) {
    unitPrice = int.parse(string);
  }
  print('nhập số lượng');
  String string1 = stdin.readLineSync() ?? "";
  int quantity = 0;
  if (string1.isNotEmpty && NUMERIC.hasMatch(string1)) {
    quantity = int.parse(string1);
  }
  int sales = unitPrice * quantity;
  double discount;
  if (quantity > 120) {
    print('tổng tiền là ${sales}\$');
    print('bạn đc chiết khấu 15% ${discount = sales * 15 / 100}\$');
    print('số tiền còn lại là ${sales - discount}\$');
  } else if (quantity >= 100) {
    print('tổng tiền là ${sales}\$');
    print('bạn đc chiết khấu 10% ${discount = sales * 10 / 100}\$');
    print('số tiền còn lại là ${sales - discount}\$');
  } else {
    print('số tiền bạn phải trả là ${sales}\$');
  }
}
