bool verify_positive_number(int num){
  return (num is int && num > 0);
}

bool verify_divisible_3_5(int i){
  return (i % 3 == 0 || i % 5 == 0);
}

int testeTecnico1(int num) {
  int sum = 0;
  for (int i = 0; i < num; i++){
    if (verify_divisible_3_5(i)){
      sum += i;
    }
  }
  return sum;
}