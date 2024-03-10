//6. Wap to print multiplication table of any number.
import 'dart:io';
void main() 
{
  int i;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=10; i++)
  {
    print("$n + $i = ${i*n}");
  }
}
