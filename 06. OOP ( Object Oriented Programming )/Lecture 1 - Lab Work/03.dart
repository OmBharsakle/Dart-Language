// 3. WAP to make Supermarket Billing System.
// Requirements:
// (A) Verify User Id And Password
// (B) User Input Item Number , Item Name , Quantity , Tax , Discount.
// (C) Display All Record In Ascending order (by item Number)

import 'dart:io';

class Supermarket {
  int? ItemNumber, Quantity, Tax, Discount, choice;
  String? ItemName;

  void setter() {
    stdout.write("Enter Item Details : ${i+1} \n");
    stdout.write("--------------------------------\n");
    stdout.write("Enter the Item Number : ");
    ItemNumber = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Item Name : ");
    ItemName = stdin.readLineSync()!;
    stdout.write("Enter The Quantity : ");
    Quantity = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Tax : ");
    Tax = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Discount : ");
    Discount = int.parse(stdin.readLineSync()!);
    stdout.write("--------------------------------\n");
    stdout.writeln();
  }

  void getter() {
    stdout.write("\nItem Details Are Below : \n");
    stdout.write("--------------------------------\n");
    stdout.write("Item Number : $ItemNumber\n");
    stdout.write("Item Name : $ItemName\n");
    stdout.write("Quantity : $Quantity\n");
    stdout.write("Tax : $Tax %\n");
    stdout.write("Discount : $Discount %\n");
    stdout.write("--------------------------------\n");
  }

  void GetChoice() {
    print("\n\nWelcome To SuperMarket Billing System");
    print("--------------------------------");
    print(" 1 For Add Item Details");
    print(" 2 For Display All Item Details");
    print(" 3 For Search By Item Number");
    print(" 4 For Exit");
    print("--------------------------------");
    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
  }
}

void main() {
  int i, n, j;
  String id, pswrd;
  bool check = false;
  List<Supermarket> list = [];
  Supermarket obj = new Supermarket();

  stdout.write("\nUser ID : admin\nPassword : 1234\n\n");

  // Verify User ID And Password
  do {
    stdout.write("Enter Your User ID : ");
    id = stdin.readLineSync()!;
    stdout.write("Enter Your Password : ");
    pswrd = stdin.readLineSync()!;
    if (id == "admin" && pswrd == "1234") {
      stdout.write("\nLogin Successfully..\n");
      check = true;
    } else {
      stdout.write("\nInvalid User ID or Password..\n");
    }
  } while (!check);

  stdout.write("\nEnter the N number of Item : ");
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    Supermarket obj = Supermarket();
    obj.setter();
    list.add(obj);
  }

  //Railway Reservation System
  do {
    obj.GetChoice();
    switch (obj.choice) {
      case 1:
        stdout.write("How Many Items You Want to Add : ");
        int c = n, addItem = int.parse(stdin.readLineSync()!);
        for (i = 0; i < addItem; i++) {
          Supermarket obj = Supermarket();
          obj.setter();
          list.add(obj);
          c++;
        }
        print("Item Add Successfully..");
        break;

      case 2:
        //Sort In Ascending Order
        for (i = 0; i < list.length; i++) {
          for (j = i + 1; j < list.length; j++) {
            if (list[i].ItemNumber! > list[j].ItemNumber!) {
              Supermarket obj = list[j];
              list[j] = list[i];
              list[i] = obj;
            }
          }
        }
        print("\nAll Train Details in Ascending Order Are Below : ");
        for (i = 0; i < list.length; i++) {
          list[i].getter();
        }
        break;

      case 3:
        bool found = false;
        stdout.write("Enter the Item Number : ");
        int number = int.parse(stdin.readLineSync()!);
        for (i = 0; i < list.length; i++) {
          if (list[i].ItemNumber == number) {
            list[i].getter();
            found = true;
          }
        }
        if (found != true) {
          stdout.write("\nItem Not Found..\n");
        }
        break;

      case 4:
        stdout.write("\nThank You For Visit..\n");
        break;

      default:
        stdout.write("\nEnter Valid Choice(1,2,3,4)..!!\n");
    }
  } while (obj.choice != 4);
}