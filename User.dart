import 'dart:io';

void main()
{
  print("Enter your name: ");

 var name = stdin.readLineSync();

  print("Hello ${name}");
}