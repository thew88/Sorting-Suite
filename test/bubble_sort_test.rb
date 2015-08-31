require 'minitest'
require_relative '../lib/bubble_sort'

module SortingSuite
  class BubbleSortTest < Minitest::Test

    def test_it_works_with_an_empty_array
      array = BubbleSort.new([])
      assert_equal [], array.sort
    end

    def test_it_works_with_an_array_with_one_value
      array = BubbleSort.new([1])
      assert_equal [1], array.sort
    end

    def test_it_works_with_an_array_with_two_values
      array = BubbleSort.new([3, 1])
      assert_equal [1, 3], array.sort
    end

    def test_it_sorts_three_or_more_values
      array = BubbleSort.new([3,2,1,0])
      assert_equal [0,1,2,3], array.sort
    end

    def test_it_sorts_a_shit_ton_of_numbers
      array = BubbleSort.new((1..100).to_a.shuffle)
      assert_equal (1..100).sort, array.sort
    end

    def test_it_sorts_strings
      array = BubbleSort.new(["o", "m", "f", "g"])
      assert_equal ["f", "g", "m", "o"], array.sort
    end

    def test_it_sorts_duplicate_values
      array = BubbleSort.new([3, 1, 1])
      assert_equal [1, 1, 3], array.sort
    end

    def test_it_sorts_arrays_with_negative_intergers
      array = BubbleSort.new([3,-2,-1,0])
      assert_equal [-2,-1,0,3], array.sort
    end

    def test_it_sorts_arrays_with_floats
      array = BubbleSort.new([4.5, 3.1, 2.2, 1.3])
      assert_equal [1.3, 2.2, 3.1, 4.5], array.sort
    end
  end
end
