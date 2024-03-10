//9. Wap to enter a number and check the no is prime or not?
import 'dart:io';

void main() 
{
  int i, j, count = 0;
  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  for (i = 2; i <= n; i++) 
  {
    count = 0;

    for (j=2; j<=i; j++) 
    {
      if (i % j == 0) 
      {
        count++;
        break;
      }
    }

    if (count == 0 && i != 1) 
    {
      print("$i is prime");
    }
  }
}
