/* 
1. Two Sum

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

Constraints:

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.
 

Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?
*/

class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    final List<int> list = [...numbers];
    list.sort();
    for (int index = 0; index < list.length; index++) {
      int a = list[index];
      int b = target - a;
      if (numbers.contains(b)) {
        if (b != a) {
          int aIndex = numbers.indexOf(a);
          int bIndex = numbers.indexOf(b);
          if (aIndex < bIndex) {
            return [aIndex, bIndex];
          }
          return [bIndex, aIndex];
        } else {
          int aFirst = numbers.indexOf(a);
          int aLast = numbers.lastIndexOf(a);
          return [aFirst, aLast];
        }
      }
    }
    return [];
  }
}
