FROM python:3.12-slim

WORKDIR /app

COPY . /app 

RUN apt-get update && apt-get install -y gcc libpq-dev libgl1 libzbar-dev
RUN pip install -r requirements.txt

CMD ["streamlit", "run", "home.py"]
