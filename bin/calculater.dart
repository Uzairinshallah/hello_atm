import 'dart:io';

void main()
{
  print('Enter first numbers :');
  var num1=stdin.readLineSync();
  print('Enter second numbers :');
  var num2=stdin.readLineSync();

  print('1: Sum\n2: Subtraction\n3: Multiply\n4: division'
      '\nEnter your choice ');
  var choice=stdin.readLineSync();

  if(choice=='1')
    {
      print('The sum of two numbers is :');
      print(int.parse(num1!)+int.parse(num2!));

    }
  else if(choice=='2')
  {
    print('The subtraction of two numbers is :');
    print(int.parse(num1!)-int.parse(num2!));
  }
  else if(choice=='3')
  {
    print('The Multiply of two numbers is :');
    print(int.parse(num1!)*int.parse(num2!));
  }
  else if(choice=='4')
  {
    print('The division of two numbers is :');
    print(int.parse(num1!)/int.parse(num2!));
  }
  else
    {
      print('invalid input');
    }
}