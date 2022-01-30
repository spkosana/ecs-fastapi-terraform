from fastapi import FastAPI
from fastapi.responses import UJSONResponse
from typing import Optional

app = FastAPI(title="Async FastAPI")


@app.get('/', tags=["about"], response_class=UJSONResponse)
async def home():
    return {"app": "Surya Prakash Kosana working on deploying fastapi on ECS Fargate using terraform"}
