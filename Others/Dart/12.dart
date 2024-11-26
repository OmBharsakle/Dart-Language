import 'dart:io';

void main() 
{
  int k=2;
  var sum=1;
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= 5; j++) 
    {
      if(sum<=9)
      {
       
        stdout.write('0$sum ');
      }
      else
      {
    
        stdout.write('$sum ');
      }
      sum=sum+5;
    }
    sum=k++;
    print('');
  }
}
