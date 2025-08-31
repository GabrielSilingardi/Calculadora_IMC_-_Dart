import 'package:calculadoraimc/classes/classes.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  var pessoa = Pessoa();
  
  while (true) {
    stdout.write("Digite seu nome: ");
    String? nome = stdin.readLineSync(encoding: utf8);

    if (nome == null || int.tryParse(nome) != null) {
      print("Digite um nome válido");
    } else {
      pessoa.setNome(nome);
      break;
    }
  }

  while (true) {
    stdout.write("Digite seu peso (em KG): ");
    String? peso = stdin.readLineSync(encoding: utf8);
    peso = peso?.replaceFirst(",", ".");

    if (peso == null || double.tryParse(peso) == null || double.tryParse(peso) !< 0) {
      print("Insira um peso válido");
    } else {
      pessoa.setPeso(double.parse(peso));
      break;
    }
  }

  while (true) {
    stdout.write("Digite sua altura (em metros): ");
    String? altura = stdin.readLineSync(encoding: utf8);
    altura = altura?.replaceFirst(",", ".");

    if (altura == null || double.tryParse(altura) == null || double.tryParse(altura) !< 0) {
      print("Insira uma altura válida");
    } else {
      pessoa.setAltura(double.parse(altura));
      break;
    }

  }

  print("Olá ${pessoa.returnNome()}, seu IMC é de ${pessoa.returnIMC()[0]}, você se encaixa na categoria de ${pessoa.returnIMC()[1]}");

}
