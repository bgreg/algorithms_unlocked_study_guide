require_relative "sort"

class MergeSort < Sort
  def sort
    merge_sort(@list)
  end

  def merge_sort(array)
    return array if array.count <= 1
    explain_h1 "Merge sort called with #{array}"

    explain_h2 "Diving array into sub arrays"
    mid = array.count / 2

    explain "- Slicing from 0 to #{mid} to create sub array: #{array.slice(0, mid)}"
    part_a = merge_sort(array.slice(0, mid))
    explain "- Part a found: #{part_a}"

    explain "- Slicing from #{mid} to #{array.count - mid} to create sub array: #{array.slice(mid, array.count - mid)}"
    part_b = merge_sort(array.slice(mid, array.count - mid))
    explain "- Part b found: #{part_b}"

    explain_h2 "Conquering the sub arrays"
    array = []
    offset_a = 0
    offset_b = 0
    while offset_a < part_a.count && offset_b < part_b.count
      explain "- offset_a < part_a.count && offset_b < part_b.count"
      explain "  %08s < %12s && %08s < %12s" % [offset_a, part_a.count, offset_b, part_b.count]
      a = part_a[offset_a]
      b = part_b[offset_b]
      explain "- Setting a to: #{a} and b to: #{b}"

      if a <= b
        explain "- a <= b"
        explain " #{a} <= #{b}"
        array << a
        explain "- Pushing #{a} onto array"
        explain "- Array is now: #{array}"
        offset_a += 1
      else
        array << b
        explain "- Pushing #{b} onto array"
        explain "- Array is now: #{array}"
        offset_b += 1
      end
    end

    explain_h2 "Handle final values in each sub array"
    while offset_a < part_a.count
      explain "- Pushing #{part_a[offset_a]} from part_a onto array"
      array << part_a[offset_a]
      explain "- Array is now: #{array}"
      offset_a += 1
    end

    while offset_b < part_b.count
      explain "- Pushing #{part_b[offset_b]} from part_b onto array"
      array << part_b[offset_b]
      explain "- Array is now: #{array}"
      offset_b += 1
    end

    explain_h2 "Function completed"
    explain "- Returning #{array}"

    array
  end
end
