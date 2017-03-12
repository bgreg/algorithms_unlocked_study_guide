# Quick Sort

### Description

Quick sort is a highly efficient sorting algorithm and is based on partitioning
of array of data into smaller arrays. A large array is partitioned into two
arrays one of which holds values smaller than the specified value, say pivot,
based on which the partition is made and another array holds values greater
than the pivot value. Quick sort partitions an array and then calls itself
recursively twice to sort the two resulting subarrays. This algorithm is quite
efficient for large-sized data sets as its average and worst case complexity
are of Ο(n2), where n is the number of items.

### Properties

1.  Not stable
2.  O(lg(n)) extra space (see discussion)
3.  O(n2) time, but typically O(n·lg(n)) time
4.  Not adaptive

### Resources

1.  [Toptal Examples](https://www.toptal.com/developers/sorting-algorithms/quick-sort)
2.  [Kahn Academy](https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort)
3.  [Tutorials Point](https://www.tutorialspoint.com/data_structures_algorithms/quick_sort_algorithm.htm)
