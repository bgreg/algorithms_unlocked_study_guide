<h1>Insertion Sort</h1>
***
<h3>Description</h3>
This is an in-place comparison-based sorting algorithm. Here, a sub-list is maintained which is always sorted. For example, the lower part of an array is maintained to be sorted. An element which is to be 'insert'ed in this sorted sub-list, has to find its appropriate place and then it has to be inserted there. Hence the name, insertion sort.

The array is searched sequentially and unsorted items are moved and inserted into the sorted sub-list (in the same array). This algorithm is not suitable for large data sets as its average and worst case complexity are of Ο(n2), where n is the number of items.
***
<h3>Properties</h3>
<ol>
  <li>Stable</li>
  <li>O(1) extra space</li>
  <li>O(n2) comparisons and swaps</li>
  <li>Adaptive: O(n) time when nearly sorted</li>
  <li>Very low overhead</li>
</ol>
***
<h3>Resources</h3>
<ol>
  <li>[Toptal Examples](https://www.toptal.com/developers/sorting-algorithms/insertion-sort)</li>
  <li>[Kahn Academy](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)</li>
  <li>[Tutorials Point](https://www.tutorialspoint.com/data_structures_algorithms/insertion_sort_algorithm.htm)</li>
</ol>
