from app import app2

def test_home():
    response = app2.client().get("/")

    assert response.status_code == 200
    assert response.data == b"Hello World!"
