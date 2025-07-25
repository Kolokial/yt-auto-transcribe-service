FROM python:bookworm
WORKDIR /usr/local/app

RUN apt-get update && apt-get upgrade
RUN pip3 --version
RUN pip3 install vosk
RUN apt -y install ffmpeg
RUN wget https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip
RUN unzip vosk-model-en-us-0.22.zip
RUN wget https://github.com/yt-dlp/yt-dlp/releases/download/2025.07.21/yt-dlp
RUN chmod +x yt-dlp

COPY . .