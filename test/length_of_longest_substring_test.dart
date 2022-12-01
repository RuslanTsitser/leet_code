import 'package:test/test.dart';

import '../bin/length_of_longest_substring.dart';

void main() {
  test(
    """Input: s = "abcabcbb"
Output: 3""",
    () {
      const String input = "abcabcbb";
      const int expectedResult = 3;
      final result = Solution().lengthOfLongestSubstring(input);
      expect(result, expectedResult);
    },
  );
  test(
    """Input: s = "bbbbb"
Output: 1""",
    () {
      const String input = "bbbbb";
      const int expectedResult = 1;
      final result = Solution().lengthOfLongestSubstring(input);
      expect(result, expectedResult);
    },
  );
  test(
    """Input: s = "pwwkew"
Output: 3""",
    () {
      const String input = "pwwkew";
      const int expectedResult = 3;
      final result = Solution().lengthOfLongestSubstring(input);
      expect(result, expectedResult);
    },
  );
}
