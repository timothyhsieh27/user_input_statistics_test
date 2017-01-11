require 'minitest/autorun'
require_relative 'user_input_statistics'
#
class TestUserInputStatistics < Minitest::Test
  def test_if_number?
    assert_equal(TRUE, check_if_number('0'))
    assert_equal(TRUE, check_if_number('1'))
    assert_equal(FALSE, check_if_number('A'))
  end

  def test_if_number_stored?
    assert_equal([1], store_number(1, []))
    assert_equal([1, 2], store_number(2, [1]))
    assert_equal([2, 1], store_number(1, [2]))
  end

  def test_if_numbers_counted?
    assert_equal(1, count_numbers([0]))
    assert_equal(2, count_numbers([1, 2]))
  end

  def test_if_numbers_summed?
    assert_equal(6, sum_numbers([1, 2, 3]))
    assert_equal(1, sum_numbers([0, 1]))
  end

  def test_if_averaged?
    assert_equal(1.0, average_numbers([1, 1, 1]))
    assert_equal(2.0, average_numbers([1, 3]))
  end
end
