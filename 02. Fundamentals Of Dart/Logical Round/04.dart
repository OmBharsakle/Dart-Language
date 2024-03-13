//Q4. Wap to calculate 1 to N no sum.
import 'dart:io';
void main() 
{
  int i,sum=0;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++) 
  {
    sum+=i;
  }

  stdout.write("$sum ");

}
