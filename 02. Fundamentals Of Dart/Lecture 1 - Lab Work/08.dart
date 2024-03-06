//Q.09 Write a Dart program to find a Simple Interest.
import 'dart:io';
void main() 
{
  print("Enter The Principal :");
  int p = int.parse(stdin.readLineSync()!);

  print("Enter The Rate of Interest :");
  int r = int.parse(stdin.readLineSync()!);

  print("Enter The Time :");
  int t = int.parse(stdin.readLineSync()!);
  
  double ans = ((p*r*t)/100);

  print("Your Simple Interest : $ans");
}
