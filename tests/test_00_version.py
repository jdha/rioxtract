import rioxtract


def test_version() -> None:
    assert rioxtract.__version__ != "999"
