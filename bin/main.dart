import '../lib/escribo.dart';
import 'dart:io';

void main() {
  // Criando as variaveis
  var flag = true;
  var num;

  // Mensagem para o usuário
  print('Será calculado o somatório de todos os valores inteiros ' +
  'divisíveis por 3 ou 5 que sejam inferiores ao numero digitado.');

  // Verificando se o valor digitado é valido
  while (flag){
    // Recebendo uma informação do usuário
    print('Digite um numero inteiro positivo: ');
    var input = stdin.readLineSync();
    if(input != null) {
    num = int.tryParse(input) ?? -1;
    }

    // Verificando se é um numero inteiro positivo
    if (verify_positive_number(num)){
    testeTecnico1(num);
    flag = false;
    } else {
      print('\nO VALOR DIGITADO NÃO É UM NÚMERO INTEIRO POSITIVO!!!\n');
    }
  }

  // Imprimindo o resultado
  print('Somatório de todos os valores inteiros divisíveis por' +
  '3 ou 5 que sejam inferiores a $num: \n${testeTecnico1(num)}');
}