


FROM python:3.10

# Your Docker setup goes here
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "bot.py"]
