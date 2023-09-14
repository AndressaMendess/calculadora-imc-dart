import 'dart:io';

import 'package:calculadora_imc/pessoa_classe.dart';
import 'package:calculadora_imc/utilidades2.dart' as utilidades;


void calculadoraImc() {

  print('----------Calculadora IMC----------');
  /* var pessoa = Pessoa();
  var nome = utilidades.lerConsole('Digite seu nome:');
  pessoa.setNome(nome);
  print('Seja Bem vindo ${pessoa.getNome()}, nós iremos calcular seu IMC, prossiga preenchendo as informações');

  var peso = utilidades.lerConsoleDouble('Digite seu peso:');
  pessoa.setPeso(peso);
  print('Seu peso atual é: ${pessoa.getPeso()}');

  var altura = utilidades.lerConsoleDouble('Digite sua altura:');
  pessoa.setAltura(altura);
  print('Sua altura atual é: ${pessoa.getAltura()}');


  var resIMC = pessoa.getIMC();
  print('Seu IMC atual é de: $resIMC e você está no nível de: "${pessoa.resultIMC()}"');
  print('Suas informações são: $pessoa');  */

  var nome = utilidades.lerConsole('Digite o seu nome:');
  print('Seja bem vindo $nome, nós iremos calcular seu IMC, prossiga preenchendo as informações');

  double peso;
  double altura;

  try {
  peso = utilidades.lerConsoleDouble('Digite o seu peso:');
  print('Seu peso atual é: $peso');

  altura = utilidades.lerConsoleDouble('Digite a sua altura:');
  print('Sua altura atual é: $altura');

    if (peso <= 0 || altura <= 0) {
        print('O peso e a altura devem ser valores positivos, tente novamente');
        exit(0);
    }
  } catch (e) {
    print('Valor inválido tente novamente');
    exit(0);
  }


  var pessoa = Pessoa(nome, peso, altura);
  print('Seu IMC atual é de: ${pessoa.getIMC()} e você está no nível de: "${pessoa.resultIMC()}"');
  print('Suas informações são: $pessoa');

}