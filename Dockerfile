FROM python:3.10

WORKDIR /app

# Install ffmpeg
RUN apt update && apt install -y ffmpeg && apt clean && rm -rf /var/lib/apt/lists/*

COPY . /app/

RUN pip3 install -r requirements.txt

CMD ["python3", "bot.py"]


