// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'Game.dart';


void main() {
  List<int> myList = [];
  List<int> myList2 = [];
  //const maxRandom = 100;
  /*var random = Random();
  var answer = random.nextInt(maxRandom) + 1;
  var isCorrect = false;
  var guessCount = 0;*/
  stdout.write('Enter a maximum number to random: ');
  var intrandom = stdin.readLineSync();
  var game=Game(intrandom);
  var isCorrect= false;
  var check= false;
  var count2=0;
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $intrandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    var sum=game.sum;
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $sum');
      count2++;
      myList.add(count2);
      myList2.add(sum);
      print('╟────────────────────────────────────────');

      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      isCorrect = false;
      check=false;
      do {
        stdout.write('Play again(Y/N):');
        var str = stdin.readLineSync();

        if (str == "Y" || str == "y") {
          isCorrect = false;
          check=true;
          stdout.write('Enter a maximum number to random: ');
          intrandom = stdin.readLineSync();
          print('╔════════════════════════════════════════');
          print('║            GUESS THE NUMBER            ');
          print('╟────────────────────────────────────────');
        } else if (str == "N" || str == "n") {
          print('You ve played'+count2.toString()+'games');
          for (var i = 0; i < myList.length; i++) {
            print('🚀 myGame #'+myList[i].toString()+': '+myList2[i].toString()+' guesses ');
          }

          isCorrect = true;
          check=true;
        }
      } while (!check);
    }

  }while (!isCorrect);



}
