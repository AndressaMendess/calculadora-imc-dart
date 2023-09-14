
import 'package:calculadora_imc/pessoa_classe.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {

  group('Testes com IMC |', () {
    var pessoa = Pessoa('Joana', 98, 1.52);
    var pessoa2 = Pessoa('Tyler', 60, 1.73);

  test('Testando se o IMC resulta em: Obesidade grau III', () {
    print(pessoa.getIMC());
    print(pessoa.resultIMC());
    expect(pessoa.resultIMC(), equals('obesidade grau III'));
  });

  test('Testando se o IMC resulta em: Saudável', () {
    print(pessoa2.getIMC());
    print(pessoa2.resultIMC());
    expect(pessoa2.getIMC(), allOf([greaterThan(18.5), lessThan(25)]));
  });
    
  });
}
