//Q.04 Write a Dart program to print multiplication table of user given number.
import 'dart:io';
void main()
{
  print("Enter The First Number :");
  int a = int.parse(stdin.readLineSync()!);

  int i;

  for(i=1; i<=10; i++)
  {
      print("$a * $i = ${i*a}");
  }
}

