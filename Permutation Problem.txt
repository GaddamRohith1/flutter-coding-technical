List<List<int>> permuteUnique(List<int> nums) {
  List<List<int>> result = [];
  List<int> current = [];
  List<bool> used = List.filled(nums.length, false);
  
  nums.sort();  // Sort to handle duplicates easily
  
  void backtrack() {
    if (current.length == nums.length) {
      result.add(List.from(current));
      return;
    }
    
    for (int i = 0; i < nums.length; i++) {
      if (used[i]) continue; // Skip used elements
      if (i > 0 && nums[i] == nums[i - 1] && !used[i - 1]) continue; // Skip duplicates
      
      used[i] = true;
      current.add(nums[i]);
      backtrack();
      used[i] = false;
      current.removeLast();
    }
  }
  
  backtrack();
  return result;
}

void main() {
  List<int> nums1 = [1, 1, 2];
  List<int> nums2 = [1, 2, 3];
  
  print(permuteUnique(nums1));
  print(permuteUnique(nums2));
}
