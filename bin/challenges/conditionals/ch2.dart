/*
  Write a program that asks the user to input a number between 0 and 4.

  Then, based on what the user inputs, print the following

  0 -> print 'add'
  1 -> print 'subtract'
  2 -> print 'multiply'
  3 -> print 'divide'
  4 -> print 'modulo'

 */
import 'dart:io';

void main() {

  print('Enter one of the following options:'
      '\n 0 -> Add'
      '\n 1 -> Subtract'
      '\n 2 -> Multiply'
      '\n 3 -> Divide'
      '\n 4 -> Modulo');

  print('Please enter a number from 0 - 4');
  int selector = nullEscapeAndConvertToInt();

  switch(selector){
    case 0:
      print('Add');
      break;
    case 1:
      print('Subtract');
      break;
    case 2:
      print('Multiply');
      break;
    case 3:
      print('Divide');
      break;
    case 4:
      print('Modulo');
      break;
    default:
      print('Invalid Option');
  }


}

int nullEscapeAndConvertToInt() {
  String? number;
  int? parsedNumber;

  while (parsedNumber == null) {
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