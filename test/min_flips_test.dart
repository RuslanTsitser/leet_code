import 'package:test/test.dart';

import '../bin/min_flips.dart';

void main() {
  test("""Input: target = "101"
Output: 3""", () {
    const String test = "101";
    const int expectedResult = 3;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
  test("""Input: target = "10111"
Output: 3""", () {
    const String test = "10111";
    const int expectedResult = 3;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
  test("""Input: target = "00000"
Output: 0""", () {
    const String test = "00000";
    const int expectedResult = 0;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
  test("""Input: target = "001011101"
Output: 5""", () {
    const String test = "001011101";
    const int expectedResult = 5;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
  test("""Input: target = "001010100101"
Output: 9""", () {
    const String test = "001010100101";
    const int expectedResult = 9;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
  test("""Input: target = "11000"
Output: 2""", () {
    const String test = "11000";
    const int expectedResult = 2;
    final int result = Solution().minFlips(test);
    expect(result, expectedResult);
  });
}
