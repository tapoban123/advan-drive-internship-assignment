from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi
from dotenv import load_dotenv
import os

load_dotenv()

uri = os.environ.get("MONGO_DB_URL")
client = MongoClient(uri, server_api=ServerApi('1'))

# uri = "mongodb://localhost:27017/"
# client = MongoClient(uri)

db = client.get_database("requests_db")

request_collection = db.get_collection("request_data")

#
# # Send a ping to confirm a successful connection
# try:
#     client.admin.command('ping')
#     print("Pinged your deployment. You successfully connected to MongoDB!")
# except Exception as e:
#     print(e)
