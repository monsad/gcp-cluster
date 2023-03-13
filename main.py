import uvicorn
from fastapi import FastAPI
import os
app = FastAPI()
@app.get("/{msg}")
async def print_message(msg:str):

    message = msg
    final_message = f"My Name is {message}, Nice meeting you! "

    return final_message