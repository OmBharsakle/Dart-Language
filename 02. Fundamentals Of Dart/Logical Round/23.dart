// 23.Wap to addition of two matrices. 
import 'dart:io';

void main() 
{
  int i, j;
  print("Enter The Size Of The Matrices : ");
  int n = int.parse(stdin.readLineSync()!);

  List l1 = [];
  List l2 = [];
  List l3 = [];

  print("Enter Elements Of First Matrix : ");

  for (i = 0; i < n; i++) 
  {
    l1.add([]);
    for (j = 0; j < n; j++) 
    {
      l1[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  print("Enter Elements Of Second mMtrix : ");

  for (i = 0; i < n; i++) 
  {
    l2.add([]);
    for (j = 0; j < n; j++) 
    {
      l2[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  for (i = 0; i < n; i++) 
  {
    l3.add(List.filled(n, 0));
  }

  print("Sum Of The Matrices : ");

  for (i = 0; i < n; i++) 
  {
    for (j = 0; j < n; j++) 
    {
      l3[i][j] = l1[i][j] + l2[i][j];
    }
  }

  for (i = 0; i < n; i++) 
  {
    for (j = 0; j < n; j++) 
    {
      stdout.write('${l3[i][j]} ');
    }
    print("");
  }
}
