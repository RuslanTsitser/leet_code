class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int len = nums.length;
    for (int i = 0; i < len; i++) {
      for (int index = i + 1; index < len; i++) {
        if (nums[i] + nums[index] == target) {
          return [i, index];
        }
      }
    }

    return [];
  }
}

class Class1 {
  Class1([this.pole]);
  var pole;
}
