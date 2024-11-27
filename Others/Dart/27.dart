import 'dart:convert';
import 'dart:io';

void main() {
  for (int i = 65; i <= 69; i++) {
    for (int j = 65; j <= 69; j++) {
      stdout.write("${ascii.decode([j])} ");
    }
    print("");
  }
}
