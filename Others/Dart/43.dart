import 'dart:io';

void main()
{
  int k=1,l=0;
  for (int i = 1; i <= 5; i++) {
    k=i+l;
    for (int j = 1; j <= i; j++) {
      stdout.write("$k ");
      k+=2;
    }
    l++;
    print("");
  }
}