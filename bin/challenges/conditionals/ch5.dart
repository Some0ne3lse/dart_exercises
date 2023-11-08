/*
  Copy the code from ch4 - Try the bonus challenge if you are up for it!

  BONUS: In practise, a double CAN NEVER be even or odd. Can you change the
         program s.t if the user selects the divide operation, we simply state
         that the result is neither even or odd?


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

  var oddOrEven = calculator(selector, num1, num2);

  if (oddOrEven == null){
    print('Number is 0');
  } else {
    oddOrEven.isEven ? print('It\'s even') : print('It\'s odd');
  }
}



int ?calculator (int selector, num1, num2) {
  switch (selector) {
    case 0:
      print('Add');
      int addResult = num1 + num2;
      print("$num1 + $num2 is $addResult");
      int result = addResult;
      return result;
    case 1:
      print('Subtract');
      int subtractResult = num1 - num2;
      print('$num1 - $num2 = $subtractResult');
      int result = subtractResult;
      return result;

    case 2:
      print('Multiply');
      int multiplyResult = num1 * num2;
      print('$num1 * $num2 = $multiplyResult');
      int result = multiplyResult;
      return result;
    case 3:
      print('Divide');
      double divideResult = num1 / num2;
      print('$num1 / $num2 = $divideResult');
      int result = divideResult.round();
      return result;
    case 4:
      print('Modulo');
      int moduloResult = num1 % num2;
      print('The leftover of dividing $num1 with $num2 = $moduloResult');
      int result = moduloResult;
      return result;
    default:
      print('Invalid Option');
      break;

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