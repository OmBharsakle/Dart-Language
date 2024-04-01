void main() 
{
  int SumOfList({List<int>? Lists}) 
  {
    if (Lists == null) 
    {
      return 0;
    }

    late int  sum = 0;
    Lists.forEach((element) { sum = sum + element;});
    return sum;
  }

  List<int> Numbers = [1, 2, 3, 4, 5];

  int result = SumOfList(Lists: Numbers);

  print("Sum Of List Elements : $result");
}