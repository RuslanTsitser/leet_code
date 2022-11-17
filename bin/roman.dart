class Solution {
  String intToRoman(int num) {
    Map<int, List<String>> values = {
      0: ['I', 'V', 'X'],
      1: ['X', 'L', 'C'],
      2: ['C', 'D', 'M'],
      3: ['M'],
    };
    final numString = num.toString();
    final power = numString.length - 1;
    String number = '';
    for (var index = 0; index < numString.length; index++) {
      final digit = int.parse(numString[index]);
      final digitPower = power - index;
      List<String> letters = values[digitPower]!;
      switch (digit) {
        case 0:
          break;
        case 1:
          number = number + letters[0];
          break;
        case 2:
          number = number + letters[0] + letters[0];
          break;
        case 3:
          number = number + letters[0] + letters[0] + letters[0];
          break;
        case 4:
          number = number + letters[0] + letters[1];
          break;
        case 5:
          number = number + letters[1];
          break;
        case 6:
          number = number + letters[1] + letters[0];
          break;
        case 7:
          number = number + letters[1] + letters[0] + letters[0];
          break;
        case 8:
          number = number + letters[1] + letters[0] + letters[0] + letters[0];
          break;
        case 9:
          number = number + letters[0] + letters[2];
          break;
      }
    }
    return number;
  }
}

void main(List<String> args) {
  for (int index = 100; index < 120; index++) {
    print(Solution().intToRoman(index));
  }
}
