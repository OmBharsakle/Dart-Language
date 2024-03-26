// 3. WAP to make Supermarket Billing System.
// Requirements:
// (A) Verify User Id And Password
// (B) User Input Item Number , Item Name , Quantity , Tax , Discount.
// (C) Display All Record In Ascending order (by item Number)

import 'dart:io';

class SuperMarket {
  int? _ItemNumber, _Quantity, _Tax, _Discount, _Choice;
  String? _ItemName;

  void setter(int i) {
    stdout.write("Enter Item Details Number : ${i+1} \n");
    stdout.write("--------------------------------\n");
    stdout.write("Enter Item Number : ");
    _ItemNumber = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Item Name : ");
    _ItemName = stdin.readLineSync()!;
    stdout.write("Enter Item Quantity : ");
    _Quantity = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Item Tax : ");
    _Tax = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Item Discount : ");
    _Discount = int.parse(stdin.readLineSync()!);
    stdout.write("--------------------------------\n");
    stdout.writeln();
  }

  void getter(int i) {
    stdout.write("\nItem Details Are Below : ${i+1} \n");
    stdout.write("--------------------------------\n");
    stdout.write("Item Number : $_ItemNumber\n");
    stdout.write("Item Name : $_ItemName\n");
    stdout.write("Item Quantity : $_Quantity\n");
    stdout.write("Item Tax : $_Tax %\n");
    stdout.write("Item Discount : $_Discount %\n");
    stdout.write("--------------------------------\n");
  }

  void GetChoice() {
    print("Welcome To SuperMarket Billing System");
    print("--------------------------------");
    print("1. For Add Item Details");
    print("2. For Display All Item Details");
    print("3. For Search By Item Number");
    print("4. For Exit");
    print("--------------------------------\n");
    stdout.write("Enter Your Choice : ");
    _Choice = int.parse(stdin.readLineSync()!);
  }
}

void main() {
  int i, n, j;
  String id, pass;
  List<SuperMarket> list = [];
  SuperMarket obj = new SuperMarket();

  stdout.write("\nUser ID : Admin\nPassword : 1234\n\n");

  stdout.write("Enter Your User ID : ");
  id = stdin.readLineSync()!;
  stdout.write("Enter Your Password : ");
  pass = stdin.readLineSync()!;
  if (id == "Admin" && pass == "1234") 
  {
    stdout.write("\nLogin Successfully...\n");
    stdout.write("\nEnter The Number Of Item : ");
   n = int.parse(stdin.readLineSync()!);
 
   for (i = 0; i < n; i++) 
   {
     SuperMarket obj = SuperMarket();
     obj.setter(i);
     list.add(obj);
   }
 
   do {
     obj.GetChoice();
     switch (obj._Choice) 
     {
       case 1:
         stdout.write("How Many Items You Want To Add : ");
         int addItem = int.parse(stdin.readLineSync()!);
         for (i = 0; i < addItem; i++) 
         {
           SuperMarket obj = SuperMarket();
           obj.setter(i);
           list.add(obj);
         }
         print("Item Add Successfully..");
         break;
 
       case 2:
         for (i = 0; i < list.length; i++) 
         {
           for (j = i + 1; j < list.length; j++) 
           {
             if (list[i]._ItemNumber! > list[j]._ItemNumber!) 
             {
               SuperMarket obj = list[j];
               list[j] = list[i];
               list[i] = obj;
             }
           }
         }
         print("\nDisplay All Record In Ascending Order : ");
         for (i = 0; i < list.length; i++) {
           list[i].getter(i);
         }
         break;
 
       case 3:
         int track = 0;
         stdout.write("Enter the Item Number : ");
         int number = int.parse(stdin.readLineSync()!);
         for (i = 0; i < list.length; i++) {
           if (list[i]._ItemNumber == number) {
             list[i].getter(i);
             track = 1;
           }
         }
         if (track != 1) {
           stdout.write("\nItem's Are Not Found..\n");
         }
         break;
 
       case 4:
         stdout.write("\nThank You For Visit..\n");
         break;
 
       default:
         stdout.write("\nEnter Valid Choice (1,2,3,4)\n");
     }
   } while (obj._Choice != 4);
  } else {
    stdout.write("\nInvalid User ID Or Password..\n");
  }
}
