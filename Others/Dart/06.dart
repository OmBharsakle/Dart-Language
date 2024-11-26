import 'dart:io';

void main() 
{
  int k=1;
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= 5; j++) 
    {
      if(k<=9)
      {
        stdout.write('0$k ');
      }
      else
      {
        stdout.write('$k ');
      }
      k++;
    }
    print('');
  }
}
