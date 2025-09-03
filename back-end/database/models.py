from pydantic import BaseModel, BeforeValidator, Field, ConfigDict
from typing import Annotated, Optional
from datetime import datetime, timezone

PyObjectId = Annotated[str, BeforeValidator(str)]


class ItemModel(BaseModel):
    name: str
    quantity: int


class RequestModel(BaseModel):
    request_id: Optional[PyObjectId] = Field(alias="_id", default=None)
    items: list[ItemModel]
    created_at: datetime = Field(default=datetime.now(timezone.utc))
    status: str = Field(default="PENDING")
    model_config = ConfigDict(populate_by_name=True, arbitrary_types_allowed=True)


class RequestCollection(BaseModel):
    requests: list[RequestModel]
