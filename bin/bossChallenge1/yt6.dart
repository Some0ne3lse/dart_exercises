/*
 Continued..

 Now we will add to the previous condition we made.
 Before going into the if block, create a integer called bias with value 0.
 We will change this bias based on the answer from the user.

 Yes:
  Set the bias variable to 1770
 No:
  Set the bias variable to 1769
 Neither yes or no
  Keep the same condition as before

 After the whole condition chain (the if, else if, else) has finished, then
 using the number you got when you multiplied by 50, add the variable bias
 to the number, store it in another variable.

 As before, print to the user what you are doing.
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
    int step3 = step2 * 50;
    print('$step2 * 50 = $step3');
    number = step3;
  } else  {
    print('You entered $number, which is wrong');
  }

  int bias = 0;

  print('Is it your birthday?');
  String answer = nullEscapeFromString().toLowerCase();

  if (answer == 'yes'){
    print('I\'m sorry I missed it..');
    bias = 1770;
    print('Your bias is $bias');
  } else if(answer == 'no'){
    print('Am I invited?');
    bias = 1769;
    print('Your bias is $bias');
  } else {
    print('Please write the answer again. You wrote $answer, which is not yes or no');
  }

  int biasAndNumber = bias + number;
  print('Your number $number plus bias $bias = $biasAndNumber');

}

String nullEscapeFromString(){
  String? sentence;
  while (sentence == null) {
    sentence = stdin.readLineSync();
    if (sentence == null) {
      print("Invalid option");
    }
  }
  return sentence;
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