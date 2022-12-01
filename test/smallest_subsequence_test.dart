import 'package:test/test.dart';

import '../bin/smallest_subsequence.dart';

void main() {
  test('smallest subsequence', () {
    const test = "cdadabcc";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "bcabc";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "cbacdcbc";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "abc";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "aabc";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "acb";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "acbd";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
  test('smallest subsequence', () {
    const test = "acbdb";
    final result = Solution().smallestSubsequence(test);
    expect(result, "adbc");
  });
}
