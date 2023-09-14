import 'dart:math' as math;

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;


  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome) {
    _nome = nome;
  }

  String? getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double? getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double? getAltura() {
    return _altura;
  }

  double? getIMC() {
    var calcIMC = _peso! / math.pow(_altura!, 2);
    calcIMC *= 100;
    return calcIMC.roundToDouble() / 100;
  }

  String? resultIMC() {
    double? imc = getIMC();
    if (imc! < 15) {
      return 'Magreza grave';
    } else if(imc >= 15 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if(imc >= 18.5 && imc < 25) {
      return 'Saudável';
    } else if(imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade grau I';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade grau II';
    } else {
      return 'obesidade grau III';
    }
  }

  @override
  String toString() {
    return 
    {
      'nome': _nome,
      'peso': _peso,
      'altura': _altura,
    }.toString();
  }
}
