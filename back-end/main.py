from fastapi import FastAPI
from fastapi import FastAPI, WebSocket, WebSocketDisconnect, Body, status
from fastapi.responses import HTMLResponse
from pymongo.results import InsertOneResult

from database.models import RequestModel, RequestCollection
from database.database import request_collection

app = FastAPI()


@app.get("/")
def home():
    return "Welcome to Request Handling API."


@app.post("/create-request",
          response_model=RequestModel,
          response_model_by_alias=False,
          status_code=status.HTTP_201_CREATED, )
async def create_new_request(request: RequestModel = Body(...)):
    new_request: InsertOneResult = request_collection.insert_one(
        request.model_dump(by_alias=True, exclude={"request_id"}))

    created_request = request_collection.find_one({"_id": new_request.inserted_id})

    return created_request


@app.get("/requests")
def fetch_all_requests():
    return RequestCollection(requests=request_collection.find().to_list())


@app.get("/request-ids")
def fetch_request_ids():


@app.websocket("/requests/{request_id}/ws")
async def update_request(websocket: WebSocket, request_id: str, ):
    await websocket.accept()
    while True:
        data = await websocket.receive_text()

