import 'dart:convert';
import 'dart:io';


String lerConsole(String texto) {
  print(texto);
  var digito = stdin.readLineSync(encoding: utf8);
  return digito ?? '0';
}


double lerConsoleDouble(String texto) {
  var num = double.parse(lerConsole(texto));
  return num;
}