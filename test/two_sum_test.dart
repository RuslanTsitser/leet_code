import 'package:test/test.dart';

import '../bin/two_sum.dart';

void main() {
  test(
    """Input: nums = [2,7,11,15], target = 9
Output: [0,1]""",
    () {
      const List<int> input = [2, 7, 11, 15];
      const int target = 9;
      const List<int> output = [0, 1];
      final result = Solution().twoSum(input, target);
      expect(result, output);
    },
  );
  test(
    """Input: nums = [3,2,4], target = 6
Output: [1,2]""",
    () {
      const List<int> input = [3, 2, 4];
      const int target = 6;
      const List<int> output = [1, 2];
      final result = Solution().twoSum(input, target);
      expect(result, output);
    },
  );
  test(
    """Input: nums = [3,3], target = 6
Output: [0,1]""",
    () {
      const List<int> input = [3, 3];
      const int target = 6;
      const List<int> output = [0, 1];
      final result = Solution().twoSum(input, target);
      expect(result, output);
    },
  );
}
