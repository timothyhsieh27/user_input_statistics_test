require 'minitest/autorun'
require_relative 'user_input_statistics'
#
class TestUserInputStatistics < Minitest::Test
  def test_if_number?
    assert_equal(TRUE, check_if_number(1))
    assert_equal(FALSE, check_if_number('1'))

    assert_equal(TRUE, check_if_number(0))
    assert_equal(FALSE, check_if_number('0'))

    assert_equal(FALSE, check_if_number('A'))
  end

  def test_if_number_stored?
    assert_equal([1], store_number(1, []))
    assert_equal([1, 2], store_number(2, [1]))
    assert_equal([2, 1], store_number(1, [2]))
  end
end
