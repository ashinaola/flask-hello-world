FROM python:3.10-alpine

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN python -m venv .venv && \
    #source .venv/bin/activate && \
    #pip install -r requirements.txt && \
    pip freeze

COPY . /app

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]