import 'dart:math';

class Pessoa {
  String _nome = '';
  late double _peso;
  late double _altura;

  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;

  String returnNome() {
    return _nome;
  }

  double returnPeso() {
    return _peso;
  }

  double returnAltura() {
    return _altura;
  }

  List returnIMC({double? peso, double? altura}) {
    double calculo;
    if (peso != null && altura != null) {
      calculo = (peso / pow(altura, 2));
    } else {
      calculo = (_peso / pow(_altura, 2));
    }
    String condicao = "";

    if (calculo < 16) {
      condicao = "Magreza grave";
    } else if (calculo >= 16 && calculo < 17) {
      condicao = "Magreza moderada";
    } else if (calculo >= 17 && calculo < 18.5) {
      condicao = "Magreza leve";
    } else if (calculo >= 18.5 && calculo < 25) {
      condicao = "Saudável";
    } else if (calculo >= 25 && calculo < 30) {
      condicao = "Sobrepeso";
    } else if (calculo >= 30 && calculo < 35) {
      condicao = "Obesidade Grau I";
    } else if (calculo >= 35 && calculo < 40) {
      condicao = "Obesidade Grau II (Severa)";
    } else if (calculo > 40) {
      condicao = "Obesidade Grau III (Mórbida)";
    }

    String imc = calculo.toStringAsFixed(2);
    return [imc, condicao];
  }

}