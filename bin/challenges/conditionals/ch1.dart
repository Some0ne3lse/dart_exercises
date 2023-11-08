/*
  Write a program that asks the user for two numbers.
  Store these numbers in a variable and print them.
 */

import 'dart:io';

void main(){

  print("Hello! Please enter your 2 numbers");

  String? num1String = stdin.readLineSync();
  int? num1 = int.parse(num1String!);

  String? num2String = stdin.readLineSync();
  int? num2 = int.parse(num2String!);

  print('Your numbers are $num1 and $num2');
}