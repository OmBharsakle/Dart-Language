//Q5. Wap to calculate factorial of a number.
import 'dart:io';
void main() 
{
  int i,fac=1;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    fac*=i;
  }

  stdout.write("$fac ");

}
