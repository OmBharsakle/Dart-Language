import 'dart:io';

void main()
{
  int k=1,l=0;
  for (int i = 1; i <= 5; i++) {
    k=i;
    for (int j = i; j >= 1; j--) {
      stdout.write("$k ");
      k+=i;
    }
    print("");
  }
}