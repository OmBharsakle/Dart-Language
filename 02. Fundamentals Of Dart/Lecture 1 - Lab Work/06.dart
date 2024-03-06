//Q.06 Write a Dart program to find a cube of any number.
import 'dart:io';
void main() 
{
  print("Enter The Number : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Your Cube : ${a*a*a}");

}