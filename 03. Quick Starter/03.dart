import 'dart:io';
void main()
{
  List l1 = [];

  stdout.write("Entre The size : ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i =0; i<n; i++)
  {
    stdout.write("Entre The Element[$i] : ");
    int x = int.parse(stdin.readLineSync()!);
    l1.add(x);
  }

  print("Enter 1 For Insert");
  print("Enter 2 For Upadate");
  print("Enter 3 For Deletes");

  stdout.write("Entre The Choice : ");
  int choice = int.parse(stdin.readLineSync()!);
   
  switch (choice)
  {
    case 1:

      stdout.write("Enter The Pos : ");
      int pos = int.parse(stdin.readLineSync()!);

      stdout.write("Enter the Ele: ");
      int ele = int.parse(stdin.readLineSync()!);

      l1.insert(pos,ele);
				
				print(l1);

        print("Element Insert Successfully....");

       break;

      case 2:
      stdout.write("Entre The Pos : ");
      int pos = int.parse(stdin.readLineSync()!);

      stdout.write("Entre The Ele: ");
      int ele = int.parse(stdin.readLineSync()!);

        l1[pos] = ele;
				
			print("Element Update Successfilly.....");
      break;
      
      case 3:
      stdout.write("Entre The Pos : ");
      int pos = int.parse(stdin.readLineSync()!);

      	l1.removeAt(pos);

        print(l1);
        print("Element Delet Successfilly.....");
      break;
     default:print("Entre The Correct Value");
   }
  
}