//Q.07 Write a Dart program to print full name by getting first name and last name by user input.
import 'dart:io';
void main() 
{
  print("Enter The First Name : ");
  String a = stdin.readLineSync()!;

  print("Enter The Last Name : ");
  String b = stdin.readLineSync()!;

  print("$a $b");

}