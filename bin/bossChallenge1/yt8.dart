/*
 Continued..

 Now that we have our conditions, we can continue.
 Create a if-else block, were we enter the if block only if both condition1 and
 condition 2 are met. Inside there, we want to subtract the year the user entered
 from the result from step4, and save the results as step5.

 If both condition1 and condition2 are true:
  subtract the year the user entered from the result from step4
  As usual, print what operations you are performing.
 Else:
  User is a fool, exit the program

 */
import 'dart:io';

void main() {
  print('When were you born?');
  String yearBorn = nullEscapeFromString();

  bool condition1;
  int? decade;
  bool condition2;

  int yearNumberLength = yearBorn.length;

  condition1 = yearNumberLength == 4;

  String firstTwoNumbersSt = yearBorn.substring(0,2);
  decade = int.tryParse(firstTwoNumbersSt);

  if (decade == 19 || decade == 20){
    condition2 = true;
  } else {
    condition2 = false;
  }

  print('Year: $yearBorn');
  print('Length is 4: $condition1');
  print('Decade: $decade');
  print('Decade is valid: $condition2');

  int? actualYearAsInt;

  if (condition1 && condition2 == true){
    actualYearAsInt = int.tryParse(yearBorn);
  } else {
    print('User is a fool and should get a life');
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