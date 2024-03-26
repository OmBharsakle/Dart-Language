import 'dart:io';

class MapEntry
{
  var id,name,age,salary;

 void set()
 {
    stdout.write("Entre Id : ");
    id = stdin.readLineSync()!;
    stdout.write("Entre Name : ");
    name = stdin.readLineSync()!;
    stdout.write("Entre Age : ");
    age = stdin.readLineSync()!;
    stdout.write("Entre Salary : ");
    salary = stdin.readLineSync()!;
 }

 Map m1 = 
 {
    'name' : "omg",
    'id': 12,
    'age': 12,
    'salary': 12,
 };
 
 void entrymap()
 {
    m1['name'] = name;
    m1['id'] = id;
    m1['age'] = age;
    m1['salary'] = salary;
 }
 void get()
 {
    print("id is : $id");
    print("name is : $name");
    print("age is ;$age ");
    print("salary  is : $salary");
 }

}
void main()
{
  MapEntry m1 = MapEntry();

  print("------------------");
  m1..set()..entrymap()..get();
 

  
}
 