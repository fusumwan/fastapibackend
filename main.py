import os
from fastapi import FastAPI
import uvicorn

# Create the FastAPI app
app = FastAPI()

# Define a simple route
@app.get("/")
def read_root():
    return {"message": "Hello, World! This is a FastAPI app."}

# Define another route
@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "query": q}

# Only if running directly, load the port from the environment variable
if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    uvicorn.run(app, host="0.0.0.0", port=port)
