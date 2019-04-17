String reverseStr(String input) {
  if('' == input || input.length == 1) return input;
  return '${reverseStr(input.substring(1))}${input[0]}';
}