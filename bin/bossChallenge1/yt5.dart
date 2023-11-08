/*
 Continued..
 Now, after the last calculation, ask the user if his birthday, save the answer
 to a string variable. Tell him to write yes or no.

 Yes:
    Tell him you're sorry you missed it
 No:
    Ask if you are invited.
 Neither
    Tell him him he needs to run the program again.
    After you told him that he did wrong, put this code after the print
    statement, this will make the program end there.

 HINT: if, else if, else and .toLowerCase()
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
  } else  {
    print('You entered $number, which is wrong');
  }

  print('Is it your birthday?');
  String answer = nullEscapeFromString().toLowerCase();

  if (answer == 'yes'){
    print('I\'m sorry I missed it..');
  } else if(answer == 'no'){
    print('Am I invited?');
  } else {
    print('Please write the answer again. You wrote $answer, which is not yes or no');
  }


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