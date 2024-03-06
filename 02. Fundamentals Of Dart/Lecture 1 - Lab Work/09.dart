//Q.09 Write a Dart program to create a calculator using switch case.
import 'dart:io';
void main() 
{
  print("Enter The First Number :");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter The Second Number :");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter The Second Number :");
  String c = stdin.readLineSync()!;
  
  switch(c)
  {
    case '+' : print("$a + $b = ${a+b}");
    break;
    case '-' : print("$a - $b = ${a-b}");
    break;
    case '*' : print("$a * $b = ${a*b}");
    break;
    case '/' : print("$a / $b = ${a/b}");
    break;
    case '%' : print("$a % $b = ${a%b}");
    break;
  }
}
