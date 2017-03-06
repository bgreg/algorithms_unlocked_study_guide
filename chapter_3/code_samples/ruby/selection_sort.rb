require_relative "sort"

class SelectionSort < Sort
  def sort
    0.upto(@last_index).each do |i|
      explain "@list: #{@list}"
      smallest = i

      (i + 1).upto(@last_index).each do |j|
        smallest = j if @list[j] < @list[smallest]
      end

      swap(original_index: i, replacement_index: smallest)
      explain "\n"
    end

    @list
  end
end
