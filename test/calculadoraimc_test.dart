import 'package:calculadoraimc/classes/classes.dart';
import 'package:test/test.dart';

void main() {
  var pessoa = Pessoa();

  test('calculate', () {
    expect(pessoa.returnIMC(peso: 60, altura: 1.70), ['20.76', "Saudável"]);
  });
}
