/*
 Continuing from the first example, if the user enters the correct value,
 multiply this value 2. Print the formula <the-number> * 2 = <result> where
 you enter the results of the user.

 Store the results as step1.
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