import 'dart:io';

void main() {
  int k = 0;
  for (int i = 1; i <= 5; i++) {
    //row
    k = i;
    for (int j = 1; j <= 5; j++) {
      //col
      if(i%2!=0)
        {
          if(k%2==0)
            {
            stdout.write("1 ");
              k += 1;
            }else{
              stdout.write("0 ");
              k += 1;
          }
        }else{
          stdout.write("0 ");
          k += 1;
      }
    }
    print("");
  }
}