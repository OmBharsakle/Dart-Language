// 2. WAP to make Railway Reservation System.
// Requirements:
// (A) User Input Train Number , Train Name , Source , Destination , Train Time.
// (B) Display Record By Search Train Number.
// (C) Minimum 3 Input Train Record.

import 'dart:io';

class RailwaySystem
{ 
  String? _TrainName, _TrainSource, _Destination;
  int? _TrainNumber, _TrainTime, _Choice;

  void setter(int i) 
  {
    print("\n\nEnter Train Details Number : ${i + 1}");
    print("----------------------------------------");
    stdout.write("Enter Train Number : ");
    _TrainNumber = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Train Name : ");
    _TrainName = stdin.readLineSync()!;
    stdout.write("Enter Source : ");
    _TrainSource = stdin.readLineSync()!;
    stdout.write("Enter Destination : ");
    _Destination = stdin.readLineSync()!;
    stdout.write("Enter Train Time : ");
    _TrainTime = int.parse(stdin.readLineSync()!);
  }

  void getter(int i) {
    print("\nTrain Details Are Below : ${i + 1}");
    print("----------------------------------------");
    print("Train Number : $_TrainNumber");
    print("Train Number : $_TrainName");
    print("Train Source : $_TrainSource");
    print("Train Destination : $_Destination");
    print("Train Time : $_TrainTime : 00");
    print("----------------------------------------");
  }

  void GetChoice() {
    print("\n\nWelcome to Railway Reservation System");
    print("----------------------------------------");
    print("1. For Add Train Details");
    print("2. For Display All Train Details");
    print("3. For Search By Train Number");
    print("4. For Exit");
    print("----------------------------------------");

    stdout.write("Enter Your Choice : ");
    _Choice = int.parse(stdin.readLineSync()!);
  }
}

void main() {
  int i, n;
  RailwaySystem Train = RailwaySystem();

  stdout.write("Enter Number of Train : ");
  n = int.parse(stdin.readLineSync()!);

  List<RailwaySystem> TrainList = [];
  for (i = 0; i < n; i++) {
    RailwaySystem Train = RailwaySystem();
    Train.setter(i);
    TrainList.add(Train);
  }

  do {
    Train.GetChoice();
    switch (Train._Choice) {
      case 1:
        stdout.write("\nHow Many Train Details You Want To Add :");
        int c = n, addTrain = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < addTrain; i++) 
        {
          RailwaySystem Train = RailwaySystem();
          Train.setter(c);
          TrainList.add(Train);
          c++;
        }
        print("\nTrain Add Successfully..\n");
        break;

      case 2:
        print("\nAll Train Details Are Below : ");
        for (int i = 0; i < TrainList.length; i++) 
        {
          TrainList[i].getter(i);
        }
        break;

      case 3:
        int track = 0;
        stdout.write("\nEnter Train Number : ");
        int Number = int.parse(stdin.readLineSync()!);
        for (i = 0; i < TrainList.length; i++) {
          if (TrainList[i]._TrainNumber == Number) 
          {
            track = 1;
            TrainList[i].getter(i);
          }
        }
        if (track != 1)
        { 
          stdout.write("\nTrain Not Found..!!\n");
        }
        break;

      case 4:
        stdout.write("\nThank You For Visit...\n");
        break;

      default:
        print("Enter Valid Choice(1,2,3,4)");
    }
  } while (Train._Choice != 4);
}
