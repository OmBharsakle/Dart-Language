//Q1. WAP to create a class for student to get and print details of N students. (with use of array of objects)

import 'dart:io';

class Student {
  String? _name, _grade;
  int? _age, _std, _id;

  void setter() {
    stdout.write("\nEnter The Details Of Student\n");
    stdout.write("Enter The Id Of The Student : ");
    _id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Name Of The Student : ");
    _name = stdin.readLineSync();
    stdout.write("Enter The Age Of The Student : ");
    _age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Standard Of The Student :");
    _std = int.parse(stdin.readLineSync()!);
    stdout.write("Enter The Grade Of The Student :");
    _grade = stdin.readLineSync();
  }

  void getter() {
    print("\nStudent Details Are Below");
    print("--------------------------------");
    print("The Id Of The Student Is : $_id");
    print("The Name Of The Student Is : $_name");
    print("The Age Of The Student Is : $_age");
    print("The Standard Of The Student Is : $_std");
    print("The Grade Of The Student Is : $_grade");
    print("--------------------------------");
  }
}

void main() {
  int n;
  stdout.write("Enter The Number Of The Student : ");
  n = int.parse(stdin.readLineSync()!);

  List student = [];

  for (int i = 0; i < n; i++) {
    Student s1 = Student();
    s1.setter();
    student.add(s1);
  }

  for (int i = 0; i < n; i++) {
    student[i].getter(i);
  }
}