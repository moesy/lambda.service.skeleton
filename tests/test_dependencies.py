""" Tests to ensure required packages are installed and loaded."""
from nose2.compat import unittest
# from nose2 import discover, util

class TestRequiredDependencies(unittest.TestCase):
    """ Validate if dependencies are properly installed or included
    """

    def setUp(self):
        self.test_pandas_isinstalled()

    def tearDown(self):
        pass

    def test_pandas_isinstalled(self):
        """
        Check Pandas library version
        """

        import pandas as pd

        self.assertGreaterEqual(pd.__version__, '0.19.2')


