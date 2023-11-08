/*
   Create a program that asks a user for a number between 2 and 10.
   Store this number as a variable called step0.

   If the number is not between 2 and 10 (including 2 and 10) then
   print the number the user entered, and tell hem it's wrong.

   Print thank you if the user puts in a number between 2 and 10.
   HINT: Use the AND operator && to check two conditions in a row.
 */


import 'dart:io';

void main() {
  print('hello frændi');
  print('Please enter a number between 2 and 10');
  int number = nullEscapeAndConvertToInt();

  if (number >= 2 && number <=10){
    print('Thank you');
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