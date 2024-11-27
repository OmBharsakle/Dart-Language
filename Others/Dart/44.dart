import 'dart:io';

void main()
{
  int k=1,l=0;
  for (int i = 1; i <= 4; i++) {
    k=i+l;
    for (int j = i; j >= 1; j--) {
      stdout.write("$k ");
      k--;
      l++;
    }
    print("");
  }
}