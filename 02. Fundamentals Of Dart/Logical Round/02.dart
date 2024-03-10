//Q.02 Wap print all even no into 1 to N.
import 'dart:io';
void main() 
{
  int i;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    if(i%2==0)
    {
      stdout.write("$i ");
    }
  }
}
