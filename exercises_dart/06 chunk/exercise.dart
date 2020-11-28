// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> list = [];
  List<int> subarrays = [];
  int i;
  for (i = 0; i < array.length; i++) {
    if (i > 0 && (i % size == 0)) {
      list.add(subarrays);
      subarrays = [];
    }
    subarrays.add(array[i]);
  }
  if (subarrays.length > 0) {
    list.add(subarrays);
  }
  return list;
}
