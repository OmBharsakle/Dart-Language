//Q.01 Wap to print 1 to N number.
import 'dart:io';
void main() 
{
  int i;

  print("Enter The Number :");
  int n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    stdout.write("$i ");
  }
}
