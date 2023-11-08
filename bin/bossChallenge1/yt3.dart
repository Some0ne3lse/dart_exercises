/*
 Continued..
 After the multiplication, add 5 to the result of said multiplication.
 Print the steps so the user can see what is happening.

 Store the result as step2
 */
import 'dart:io';

void main() {
  print('hello frændi');
  print('Please enter a number between 2 and 10');
  int number = nullEscapeAndConvertToInt();

  if (number >= 2 && number <=10){
    print('Thank you');
    int step1 = number * 2;
    print('$number * 2 = $step1');
    int step2 = step1 + 5;
    print('$step1 + 5 = $step2');
  } else  {
    print('You entered $number, which is wrong');
  }
}


int nullEscapeAndConvertToInt() {
  String? number;
  int? parsedNumber;

  while (parsedNumber == null) {
    print("Please enter a valid number: ");
    number = stdin.readLineSync();

    if (number != null) {
      parsedNumber = int.tryParse(number);
    }

    if (parsedNumber == null) {
      print("Invalid option");
    }
  }

  return parsedNumber;
}