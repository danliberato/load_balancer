from fastapi import FastAPI

import os

app = FastAPI()

# Retrieve app id from env var
app_id = os.environ['APPLICATION_ID']

print(f"Running as API #{app_id}")


@app.get("/")
async def get_service_id():
    # Response with the API id
    return {"message": f"API #{app_id}"}
