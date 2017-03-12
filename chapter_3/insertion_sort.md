# Insertion Sort

### Description

This is an in-place comparison-based sorting algorithm. Here, a sub-list is
maintained which is always sorted. For example, the lower part of an array is
maintained to be sorted. An element which is to be 'insert'ed in this sorted
sub-list, has to find its appropriate place and then it has to be inserted
there. Hence the name, insertion sort. The array is searched sequentially and
unsorted items are moved and inserted into the sorted sub-list (in the same
array). This algorithm is not suitable for large data sets as its average and
worst case complexity are of Ο(n2), where n is the number of items. 

### Properties

1.  Stable
2.  O(1) extra space
3.  O(n2) comparisons and swaps
4.  Adaptive: O(n) time when nearly sorted
5.  Very low overhead

***

### Resources

1.  [Toptal Examples](https://www.toptal.com/developers/sorting-algorithms/insertion-sort)
2.  [Kahn Academy](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)
3.  [Tutorials Point](https://www.tutorialspoint.com/data_structures_algorithms/insertion_sort_algorithm.htm)
