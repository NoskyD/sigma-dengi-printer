FROM python:3

WORKDIR /usr/src/app

RUN apt-get -y update && apt-get -y install ffmpeg imagemagick

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./arbuz.py" ]