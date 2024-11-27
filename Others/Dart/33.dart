import 'dart:convert';
import 'dart:io';

void main() {
  int k=65;
  for (int i = 69; i >= 65; i--) {
    k=i;
    for (int j = 65; j <= 69; j++) {
      stdout.write("${ascii.decode([k])} ");
      k+=5;
    }
    print("");
  }
}