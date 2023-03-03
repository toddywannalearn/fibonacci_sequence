void main() {
  print('Fibonacci sem recursão em array: ${fibonacciArray(10)}');

  print('Fibonacci com recursão dentro de for loop:');
  fibonacciRecursivoOutput(15);
}

/// retorna a lista de fibonacci em um array de acordo com a quantidade inserida
List<int> fibonacciArray(int qtd) {
  List<int> arr = [1];

  for (int i = 0; i <= qtd; i++) {
    int proximoIndex = 0;

    if (arr.length == 1) {
      proximoIndex = 1;
    } else {
      proximoIndex = arr[i] + (arr[i - 1]);
    }

    arr.add(proximoIndex);
  }
  return arr;
}

/// percorre e exibe a sequência de fibonacci de acordo com a quantidade inserida
void fibonacciRecursivoOutput(int qtd) {
  for (int i = 0; i <= qtd; i++) {
    print(fibonacciRecursivo(i));
  }
}

/// retorna o próximo número da sequência fibonacci de forma recursiva de acordo com o número informado
int fibonacciRecursivo(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return fibonacciRecursivo(n - 1) + fibonacciRecursivo(n - 2);
  }
}
