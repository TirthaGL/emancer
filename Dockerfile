FROM alphine

WORKDIR /app
ADD . /app
RUN pipenv --python 3
RUN pipenv install -d --skip-lock
RUN pipenv shell
RUN pip3 install -r requirements.txt

CMD ["python3","bot.py"]
