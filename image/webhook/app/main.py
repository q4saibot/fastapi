import json

from fastapi import FastAPI, Request

app = FastAPI()


def write_json(data, filename='data.json'):
    with open(filename, 'w') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)


@app.get("/healthcheck")
def healthcheck():
    return {"HEALTHCHECK": "Ok"}


@app.post("/webhook")
async def rec_webhook(data: Request):
    body = await data.json()
    write_json(body)
    return {"Answer": "Ok"}
