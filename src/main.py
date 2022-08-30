from fastapi import FastAPI

import os

app = FastAPI()

application_id = os.environ['APPLICATION_ID']

print(f"Running as Microservice #{application_id}")


@app.get("/")
async def get_service_id():
    return {"message": f"Microservice #{application_id}"}
