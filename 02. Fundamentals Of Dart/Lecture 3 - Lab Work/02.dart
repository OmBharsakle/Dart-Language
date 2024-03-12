import 'dart:io';

void main()
{
  List unique = [];

  String Name;

  for(int i=0; i<=5; i++)
  {
    Name=stdin.readLineSync()!;
    unique.add(Name);
  }
  
  print(unique.toSet().toList());
}