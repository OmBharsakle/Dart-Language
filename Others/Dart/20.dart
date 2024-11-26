import 'dart:io';
import 'dart:math';

void main() 
{
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= 5; j++) 
    {
      if(i==2 || i==4)
      {
        stdout.write('0 ');
      }
      else if(j%2 == 0)
      {
        stdout.write('0 ');
      }
      else
      {
        stdout.write('1 ');
      }
    }
    print('');
  }
}
