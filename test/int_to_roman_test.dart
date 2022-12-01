import 'package:test/test.dart';

import '../bin/int_to_roman.dart';

void main() {
  test("""Input: num = 3\nOutput: "III"\nExplanation: 3 is represented as 3 ones.""", () {
    const int intNum = 3;
    const String expectedResult = "III";
    final result = Solution().intToRoman(intNum);
    expect(result, expectedResult);
  });
  test("""Input: num = 58\nOutput: "LVIII"\nExplanation: L = 50, V = 5, III = 3.""", () {
    const int intNum = 58;
    const String expectedResult = "LVIII";
    final result = Solution().intToRoman(intNum);
    expect(result, expectedResult);
  });
  test("""Input: num = 1994\nOutput: "MCMXCIV"\nExplanation: M = 1000, CM = 900, XC = 90 and IV = 4.""", () {
    const int intNum = 1994;
    const String expectedResult = "MCMXCIV";
    final result = Solution().intToRoman(intNum);
    expect(result, expectedResult);
  });
}
