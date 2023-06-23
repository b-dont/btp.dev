from proton.api import Session
from dotenv import load_dotenv

config = load_dotenv(".env")

username = config["PROTON_USER"]
password = config["PROTON_PASS"]

proton_session = Session(api_url="https://example.api.com")

proton_session.authenticate(username, password)
