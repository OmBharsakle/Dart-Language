//25.Wap to find sum of diagonal elements of a matrix.
import 'dart:io';

void main() 
{
  int i,j;
  double sum=0;
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

  for(i=0; i<n; i++)
  {
    stdout.write(l1[i]);
    print("");
  }

  for (i=0; i<n; i++) 
  {
    sum += l1[i][i];
  }

  print(sum);
  
}
