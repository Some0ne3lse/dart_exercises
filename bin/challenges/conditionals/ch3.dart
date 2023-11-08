/*
  Copy the code from ch1 and ch2 so that you have a program that asks for two
  numbers, then an operation.

  Then, based on what the user inputs, calculate the results using the chosen
  math operator.

  0 -> print nbr1 + nbr2 = results
  1 -> etc
  2 -> etc
  3 -> etc
  4 -> etc

 */
import 'dart:io';

void main() {

  print('Enter your first number:');
  int num1 = nullEscapeAndConvertToInt();
  print('Enter your second number:');

  int num2 = nullEscapeAndConvertToInt();



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
      int addResult = num1 + num2;
      print("$num1 + $num2 is $addResult");

      break;
    case 1:
      print('Subtract');
      int subtractResult = num1 - num2;
      print('$num1 - $num2 = $subtractResult');
      break;
    case 2:
      print('Multiply');
      int multiplyResult = num1 * num2;
      print('$num1 * $num2 = $multiplyResult');
      break;
    case 3:
      print('Divide');
      double divideResult = num1 / num2;
      print('$num1 / $num2 = $divideResult');
      break;
    case 4:
      print('Modulo');
      int moduloResult = num1 % num2;
      print('The leftover of dividing $num1 with $num2 = $moduloResult');
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