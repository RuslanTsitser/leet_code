import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    int maxLength = 0;
    List<String> letters = [];
    for (int index = 0; index < s.length; index++) {
      if (letters.contains(s[index])) {
        final lastRepeat = letters.lastIndexOf(s[index]);
        letters = letters.sublist(lastRepeat + 1);
        letters.add(s[index]);
      } else {
        letters.add(s[index]);
        maxLength = max(maxLength, letters.length);
      }
    }
    return maxLength;
  }
}

void main(List<String> args) {
  print(Solution().lengthOfLongestSubstring("aabaab!bb"));
  // print(Solution().lengthOfLongestSubstring('abaa'));
}
