import 'dart:io';

void main() 
{
  List l1= [];

  print("Enter The Size : ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0; i<n; i++)
  {
    stdout.write("Enter Number : ");
    int n1 = int.parse(stdin.readLineSync()!);
    l1.add(n1);
  }

 for(int i=0; i<n; i++)
 {
  if(l1[i]<0)
  {
    stdout.write(l1[i]);

  }
 }


}
