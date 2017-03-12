<h1>Quick Sort</h1>
***
<h3>Description</h3>
Quick sort is a highly efficient sorting algorithm and is based on partitioning of array of data into smaller arrays. A large array is partitioned into two arrays one of which holds values smaller than the specified value, say pivot, based on which the partition is made and another array holds values greater than the pivot value.

Quick sort partitions an array and then calls itself recursively twice to sort the two resulting subarrays. This algorithm is quite efficient for large-sized data sets as its average and worst case complexity are of Ο(n2), where n is the number of items.
***
<h3>Properties</h3>
<ol>
  <li>Not stable</li>
  <li>O(lg(n)) extra space (see discussion)</li>
  <li>O(n2) time, but typically O(n·lg(n)) time</li>
  <li>Not adaptive</li>
</ol>
***
<h3>Resources</h3>
<ol>
  <li>[Toptal Examples](https://www.toptal.com/developers/sorting-algorithms/quick-sort)</li>
  <li>[Kahn Academy](https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort)</li>
  <li>[Tutorials Point](https://www.tutorialspoint.com/data_structures_algorithms/quick_sort_algorithm.htm)</li>
</ol>
