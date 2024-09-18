# test_my.py

def test_addition():
    """
    A simple test to check addition.
    """
    result = 1 + 1
    assert result == 2, "Test failed: 1 + 1 should equal 2"

def test_subtraction():
    """
    A simple test to check subtraction.
    """
    result = 5 - 3
    assert result == 2, "Test failed: 5 - 3 should equal 2"

# Class-based tests
class TestMathOperations:
    def test_multiplication(self):
        """
        Test multiplication functionality.
        """
        result = 3 * 4
        assert result == 12, "Test failed: 3 * 4 should equal 12"

    def test_division(self):
        """
        Test division functionality.
        """
        result = 10 / 2
        assert result == 5, "Test failed: 10 / 2 should equal 5"
