//30.C program to find factorial of number using recursion.
import 'dart:io';

int factorial(int n)
{
  if(n>0)
  {
    return 1;
  }
  else
  {
    return n*factorial(n-1);
  }
}
void main() 
{
  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);

  int ans = factorial(n);
  print(ans);
}
