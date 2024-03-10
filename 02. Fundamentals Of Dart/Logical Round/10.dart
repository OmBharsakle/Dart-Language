//10.Wap print all prime no into 1 to N.
import 'dart:io';

void main() 
{
  int i,j,count=0;
  print("Enter The Number : ");
  int n = int.parse(stdin.readLineSync()!);


  for(i=1; i<=n; i++)
    {
        for(j=2; j<i; j++)
        {
           if(i%j==0)
           {
               count++;
               break;
           }
        }
        if(count==0 && i!=1)
            print(i);
        count = 0;
    }


}
