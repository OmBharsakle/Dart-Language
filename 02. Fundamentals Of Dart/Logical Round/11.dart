//11.Wap print fibonacci series.
import 'dart:io';

void main() 
{
  int i,c=0;
  int a=0,b=1;
   
  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    print(c);
    c = a + b;
    a = b;
    b = c;
  }
  
}
