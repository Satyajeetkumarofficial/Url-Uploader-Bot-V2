FROM python:3.12.2
WORKDIR /app
COPY ./ /app
ENV ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg
EXPOSE 80,4200,443,8000,8080
CMD ["python3", "bot.py"]
