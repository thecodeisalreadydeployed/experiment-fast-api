from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return "The FastAPI application is now deployed."


@app.get("/{index}")
async def get_fibonacci(index: int):
    previous = 1
    current = 1
    for i in range(3, index + 1):
        current += previous
        previous = current - previous
    return str(current)
