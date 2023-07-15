import 'dart:io';

void main() {
  print('nhập điểm trắc nghiệm');
  String string = stdin.readLineSync() ?? "";
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  int quiz = 0;
  if (string.isNotEmpty && NUMERIC.hasMatch(string)) {
    quiz = int.parse(string);
  }
  print('nhập điểm giữa kỳ');
  String string1 = stdin.readLineSync() ?? "";
  int midScores = 0;
  if (string1.isNotEmpty && NUMERIC.hasMatch(string1)) {
    midScores = int.parse(string1);
  }
  print('nhập điểm cuối kỳ');
  String string2 = stdin.readLineSync() ?? "";
  int finalScores = 0;
  if (string2.isNotEmpty && NUMERIC.hasMatch(string2)) {
    finalScores = int.parse(string2);
  }
  double dTB = (quiz + midScores + finalScores) / 3;
  if (dTB >= 90) {
    print('điểm trung bình của bạn là ${dTB} xếp loại A');
  } else if (dTB >= 70) {
    print('điểm trung bình của bạn là ${dTB} xếp loại B');
  } else if (dTB >= 50) {
    print('điểm trung bình của bạn là ${dTB} xếp loại C');
  } else {
    print('điểm trung bình của bạn là ${dTB} xếp loại F');
  }
}
