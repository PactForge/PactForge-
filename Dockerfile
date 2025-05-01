WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
```

* This Dockerfile:
    * Starts from a Python 3.9 slim image.
    * Sets the working directory to `/app`.
    * Copies and installs dependencies.
    * Copies your code.
    * Runs your app using Uvicorn on port 8080 (Fly.io expects your app to listen on 8080).
