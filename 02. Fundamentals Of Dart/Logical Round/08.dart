//8. Wap to sum of first and last digits in a number.
import 'dart:io';

void main() 
{
  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  int lastDigit = n % 10;

  while (n>9) 
  {
    n = n~/10;
  }

  int firstDigit = n;

  int sum = firstDigit + lastDigit;

  print("Sum of first and last digits: $sum");
}
