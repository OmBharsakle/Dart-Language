//Q.04 Write a Dart program to generates multiplication tables between n1 and n2 provided values.
import 'dart:io';
void main()
{
  print("Enter The First Number :");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter The First Number :");
  int n1 = int.parse(stdin.readLineSync()!);

  int i,j;

  for(i=n; i<=n1; i++)
  {
    for(j=1; j<=10; j++)
    {
      print("$i * $j = ${i*j}");
    }
    print(" ");
  }
}