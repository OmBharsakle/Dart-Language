//Q1. Write A Dart Class Which Convert Given Distance In Appropriate Feet And Inches.
// E.G. Input: 5 Feet And 15 Inch
// Output : 6 Feet And 3 Inch
import 'dart:io';
void main()
{
	int i;
	
  stdout.write('Enter Feet : ');
	int feet = int.parse(stdin.readLineSync()!);

  stdout.write('Enter Inc : ');
	int inc = int.parse(stdin.readLineSync()!);
	
	for(i=0; i<inc; i++)
	{
		if(inc>=12) 
		{
			inc-=12;
			feet++;
		}
	}
	
	print('feet : $feet \n Inc : $inc\n');
}