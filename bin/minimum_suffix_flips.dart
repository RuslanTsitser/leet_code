class Solution {
  int minFlips(String target) {
    final length = target.length;
    late int result;
    if (target[length - 1] == '1') {
      result = 1;
      for (int index = length - 2; index >= 0; index--) {
        if (target[index] == target[length - 1] &&
            (target[index] != target[index + 1] || target[index + 1] != target[length - 1])) {
          result = result + 2;
        }
      }
    } else {
      result = 0;
      for (int index = length - 2; index >= 0; index--) {
        if (target[index] != target[length - 1] && target[index] != target[index + 1]) {
          result = result + 2;
        }
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final test_1 = "10111";
  final test_2 = "101";
  final test_3 = "00000";
  final test_4 = "001011101";
  final test_5 = "001010100101";
  final test_6 = "11000";

  print(Solution().minFlips(test_1));
  print(Solution().minFlips(test_2));
  print(Solution().minFlips(test_3));
  print(Solution().minFlips(test_4));
  print(Solution().minFlips(test_5));
  print(Solution().minFlips(test_6));
}
