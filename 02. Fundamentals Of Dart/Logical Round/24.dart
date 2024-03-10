//24.Wap matrix convert into transpose matrix.
import 'dart:io';

void main() 
{
  int i,j;

  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  List l1 = [];

  for(i=0; i<n; i++)
  {
    l1.add([]);
    for(j=0; j<n; j++)
    {
      l1[i].add(int.parse(stdin.readLineSync()!));
    }

  }

  print("Matrix Entered Is : ");

  for(i=0; i<n; i++)
  {
    stdout.write(l1[i]);
    print("");
  }

  print("Matrix Transpose Is : ");

  for (i = 0; i < n; i++) 
    {
      for (j = 0; j < n; j++) 
      {
        stdout.write('${l1[j][i]} ');
      }
      print("");
    }
  
}
