String expandString(String input) {
  String result = '';
  int i = 0;
  
  while (i < input.length) {
    String char = input[i];
    i++;
    
    int number = 0;
    while (i < input.length && input[i].contains(RegExp(r'[0-9]'))) {
      number = number * 10 + int.parse(input[i]);
      i++;
    }
    
    result += char * number;
  }
  
  return result;
}

void main() {
  String input1 = 'a1b10';
  String input2 = 'b3c6d15';
  
  print(expandString(input1));
  print(expandString(input2));
}
