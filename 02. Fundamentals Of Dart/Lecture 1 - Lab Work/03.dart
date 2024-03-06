//Q.02 Write a Dart program to perform multiplication of two user given numbers.
import 'dart:io';
void main() 
{
  print("Enter The First Number :");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter The Second Number :");
  int b = int.parse(stdin.readLineSync()!);

  int result = a * b;
  print("Multiplication Result : ");
  print(result);
}
