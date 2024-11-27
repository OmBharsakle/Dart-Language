import 'dart:io';

void main() {
  int k = 2;
  for (int i = 1; i <= 5; i++) {
    for (int j = i; j >= 1; j--) {
      stdout.write("$k ");
      k+=2;
    }
    print("");
  }
}
