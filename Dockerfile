FROM python:3.10

WORKDIR /app

# Install dependencies including ffmpeg
RUN apt update && apt install -y ffmpeg

COPY . /app/

RUN pip3 install -r requirements.txt

CMD ["python3", "bot.py"]


