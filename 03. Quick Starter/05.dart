import 'dart:io';

void main()
{
  List l1 = [];
 
  int num, n;

  stdout.write("Enter The Number : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    l1.add([]);
  }

  for (int i = 0; i < n; i++) 
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("Enter Value Of l1[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      l1[i].add(num);
    }
  }
  // List l1 = [[]];

  // stdout.write("Entre the size : ");
  // int n = int.parse(stdin.readLineSync()!);

  // int i,j;

  // for(i=0; i<n;i++)
  // {
  //   l1.add([]);
  // }
 

  // for(i=0; i<n; i++)
  // {
  //   for(j=0; j<n; i++)
  //   {
  //      stdout.write("Entre the list of [$i][$j] : ");
  //     int x =int.parse(stdin.readLineSync()!);

  //     l1[i].add(x);
  //   }
  // }
  int choice;
  do{


    print("1. Sum Of All Element");
    print("2. Sum Of Specific Row");
    print("3. Sum Of Spcific Coloum");
    print("4. Sum Of Diogoinal");
    print("5. Sum Of Anti Diogonal");
    print("0. Exit");


    print("_______________");

    stdout.write("Entre The Choice : ");
    choice = int.parse(stdin.readLineSync()!);

  int temp,sum=0;
  int i,j;
    
      switch (choice)
    {
      case 1:
        for(i=0; i<n; i++)
        {
          for(j=0; j<n; j++)
          {
            temp = l1[i][j];
            sum = sum + temp;
          }
        }
        print("Sum is : $sum");
        break;

        case 2 : 

        stdout.write("Entre the row : ");
        int row = int.parse(stdin.readLineSync()!);

        for(j=0; j<n; j++)
        {
          temp = l1[row][j]; 
          sum = sum + temp;
        }
        print(sum);
        break;

        case 3 : 

        stdout.write("Entre the row : ");
        int coloum = int.parse(stdin.readLineSync()!);

        for(i=0; i<n; i++)
        {
          temp = l1[i][coloum]; 
          sum = sum + temp;
        }
        print(sum);
        break;

        case 4 :
        for(i=0; i<n; i++)
        {
          
            temp = l1[i][i];
            sum =sum+temp;
          
        }
        print(sum);

        break;

        case 5 : 
            int k = n - 1;
            for(i=0; i<n; i++)
          {
              temp = l1[i][k];
              sum =sum+ temp;
              k--;
          }
          print(sum);
        break;

        case 0 : 
        print("EXIT");
      default:
    }
  }while(choice!=0);
    

}