import 'dart:io';

/*
- Classificação de Sistemas 2x2 e 3x3 (no caso 3x3, através de determinante). 
-
*/
void main() {
  double x1, x2, x3, y1, y2, y3, z1, z2, z3;
  while (true) {
    print("----Menu----");
    print("1 - Sistema 2x2");
    print("2 - Sistema 3x3");
    print("3 - Sair");
    String? escolha = stdin.readLineSync()!;
    if (escolha == '1') {
      print("Qual o primeiro coeficiente de x");
      x1 = double.parse(stdin.readLineSync()!);
      print("Qual o segundo coeficiente de x?");
      x2 = double.parse(stdin.readLineSync()!);
      print("Qual o primeiro coeficiente de y?");
      y1 = double.parse(stdin.readLineSync()!);
      print("Qual o segundo coeficiente de y");
      y2 = double.parse(stdin.readLineSync()!);
      
    } else if (escolha == '2') {
      print("Qual o primeiro coeficiente de x?");
      x1 = double.parse(stdin.readLineSync()!);
      print("Qual o segundo coeficiente de x?");
      x2 = double.parse(stdin.readLineSync()!);
      print("Qual o terceiro coeficiente de x?");
      x3 = double.parse(stdin.readLineSync()!);
      print("Qual o primeiro coeficiente de y?");
      y1 = double.parse(stdin.readLineSync()!);
      print("Qual o segundo coeficiente de y?");
      y2 = double.parse(stdin.readLineSync()!);
      print("Qual o terceiro coeficiente de y?");
      y3 = double.parse(stdin.readLineSync()!);
      print("Qual o primeiro coeficiente de z?");
      z1 = double.parse(stdin.readLineSync()!);
      print("Qual o segundo coeficiente de z?");
      z2 = double.parse(stdin.readLineSync()!);
      print("Qual o terceiro coeficiente de z?");
      z3 = double.parse(stdin.readLineSync()!);
      print(
          "Precisamos desses valores para definir o determinante do sistema, que nos ajudará a classificar o sistema");
      /*
        [x1,x2,x3,x1,x2],
        [y1,y2,y3,y1,y2],
        [z1,z2,z3,z1,z2]
        ];
      */
      double calculoDeterminante =
          (x1 * y2 * z3 + x2 * y3 * z1 + x3 * y1 * z2) -
              (z1 * y2 * x3 + z2 * y3 * x1 + z3 * y1 * x2);
      if (calculoDeterminante != 0) {
        print("Esse sistema é Sistema Possível Determinado");
      } else {
        print(
            "Esse sistema ou é Sistema Impossível (nenhuma solução) ou é Sistema Possível Indeterminado (várias soluções)\nVocê irá saber quando resolver");
      }
    } else {
      break;
    }
  }
}
