import unittest
import VisitorCount

class TestHandlerCase(unittest.TestCase):
    def test_response(self):
        print('Testing response of lambda...')
        event       ={'siteStat_id': 'Count'}
        result      = VisitorCount.handler(event, None)
        print(result)
        # Assertions
        self.assertEqual(result['statusCode'], 200)
        self.assertEqual(result['headers']['Content-Type'], 'application/json')
        self.assertLessEqual(1, int(result['body'])) # Check if the site count is a positive integer

if __name__=='__main__':
    unittest.main()