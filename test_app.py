from app import app2


def test_home():
    # Create a test client using the Flask application
    with app2.test_client() as client:
        response = client.get("/")

        # Check the status code of the response
        assert response.status_code == 200

        # Check the response data, remember response.data is bytes, so it should be compared with bytes
        assert response.data == b"Hello World!"
