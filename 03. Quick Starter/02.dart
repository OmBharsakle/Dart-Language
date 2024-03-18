import 'dart:io';
void main()
{
  List l1 = [];

  print("Enter Size : ");                
  int x = int.parse(stdin.readLineSync()!);

  
  for(int i=0; i<x; i++)
  {
    stdout.write("Enter Number : ");
    int n = int.parse(stdin.readLineSync()!);
    l1.add(n);
  }

  int max=l1[0]; 
  
  for(int i=0; i<x; i++)
  {
    if(max<l1[i])
    {
      max =l1[i];
    }
    
  }
  print("Max Is : $max");
}