import 'dart:io';

void main()
{
  int k=1,l=5,a=0,s=4,b=5;
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      if(j==1)
        {
          a=k;
        }
      stdout.write("$k ");
      k-=s;
      s++;
    }
    k=a;
    k=l+k;
    b--;
    s=b;
    l--;
    print("");
  }
}