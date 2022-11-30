/* 
1081. Smallest Subsequence of Distinct Characters

Given a string s, return the lexicographically smallest subsequence of s that contains all the distinct characters of s exactly once.

Example 1:

Input: s = "bcabc"
Output: "abc"
Example 2:

Input: s = "cbacdcbc"
Output: "acdb"
 

Constraints:

1 <= s.length <= 1000
s consists of lowercase English letters.
 
*/

class Solution {
  String smallestSubsequence(String s) {
    List<String> result = s.split('');
    String smallest = result.first;

    Set<String> resultSet = {smallest};

    for (int index = 0; index < result.length; index++) {
      if (result[index].compareTo(smallest) < 1) {
        print(resultSet);
        smallest = result[index];
        resultSet = {smallest};
      } else {
        resultSet.add(result[index]);
        print(resultSet);
      }
    }

    List<String> longestList = resultSet.toList();

    String returnResult = '';
    for (var item in longestList) {
      returnResult = returnResult + item;
    }

    return returnResult;
  }
}

void main(List<String> args) {
  const test_0 = "cdadabcc";
  const test_1 = "bcabc";
  const test_2 = "cbacdcbc";
  const test_3 = "abc";
  const test_4 = "aabc";
  const test_5 = "acb";
  const test_6 = "acbd";
  const test_7 = "acbdb";

  print(Solution().smallestSubsequence(test_0)); // adbc
  // print(Solution().smallestSubsequence(test_1)); // abc
  // print(Solution().smallestSubsequence(test_2)); // acdb
  // print(Solution().smallestSubsequence(test_3)); // abc
  // print(Solution().smallestSubsequence(test_4)); // abc
  // print(Solution().smallestSubsequence(test_5)); // acb
  // print(Solution().smallestSubsequence(test_6)); // acbd
  // print(Solution().smallestSubsequence(test_7)); // acbd
}
