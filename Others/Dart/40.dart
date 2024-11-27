import 'dart:io';

void main()
{
  int k=0;
  for (int i = 1; i <= 5; i++) {
    k=0;
    for (int j = 1; j <= i; j++) {
      k+=2;
      stdout.write("$k ");
    }
    print("");
  }
}