// 12.Wap to print all negative elements in an array.
import 'dart:io';

void main() 
{
  int i;

  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  List l1 = [];

  for(i=0; i<n; i++)
  {
    l1.add(int.parse(stdin.readLineSync()!));
  }

  print("Negative Elements Is : ");

  for(i=0; i<n; i++)
  {
    if(l1[i]<0)
    {
      print('${l1[i]} ');
    }
    
  }
}

 