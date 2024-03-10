//Q2. Wap print all odd no into 1 to N.
import 'dart:io';
void main() 
{
  int i;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    if(i%2==1)
    {
      stdout.write("$i ");
    }
  }
}
