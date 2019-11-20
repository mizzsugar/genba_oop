import app.example


class TestExample:
    def test_example(self):
        actual = app.example.hello()
        expected = 'hello'
        assert expected == actual