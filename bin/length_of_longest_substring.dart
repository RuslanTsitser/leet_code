/* 
3. Longest Substring Without Repeating Characters

Given a string s, find the length of the longest 
substring without repeating characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.
*/

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
