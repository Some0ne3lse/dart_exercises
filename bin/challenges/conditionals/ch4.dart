/*
  Copy the code from ch3.

  After the operation is done (make sure to save the result to a variable!)
  Check if the number is odd or even, print the information for the user

  HINT: The divide operation will return a double, luckily, you can store any
        integer within a double, provided you convert the integer to a double :)
        Example:
          int testVar = 10;
          int testVarAgain = 20;
          double someVar;
          someVar = testVar.toDouble();  // <-- I converted testVar to double!
          someVar = (testVar + testVarAgain).toDouble(); // <-- Same thing!

  HINT: Create the variable outside the if conditions, then assign the result
        of the operations to it.

  HINT: You can't check if a double is even or not, but, when you convert a
        double to integer, it will simply drop it's decimal points. For example

        double someVar = 10.5;
        double someInt = someVar.toInt() // someInt will be 10, so we can
                                         // actually check if 10 is even or not.
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