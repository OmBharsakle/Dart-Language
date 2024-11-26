import 'dart:io';

void main() 
{
  int k=1;
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= 5; j++) 
    {
      if(k%2 == 0)
      {
        stdout.write('0 ');
      }
      else
      {
        stdout.write('1 ');
      }
      k++;
    }
    print('');
  }
}
