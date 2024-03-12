import 'dart:io';

void main()
{
  List l1= [];
  int i;

  for(i=0; i<28; i++)
  {
    stdout.write("${i+1}.Entre The Indian Sates Name : ");
    String name = stdin.readLineSync()!;
    l1.add(name);
  }

  l1.forEach((element) 
  {
    print(element);
  });
  
}
