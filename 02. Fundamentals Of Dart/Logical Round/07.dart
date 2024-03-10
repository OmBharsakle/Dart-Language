//7. Wap to count number of digits in a number.
import 'dart:io';
void main() 
{
  int i=1;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  while (n>9) 
  {
    n = n~/10;
    i++;
  }
   
  print("$i");

}
