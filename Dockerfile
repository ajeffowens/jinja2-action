FROM python:3

WORKDIR /app

RUN pip install poetry
RUN poetry config virtualenvs.create false
COPY poetry.lock pyproject.toml ./
RUN poetry install

COPY entrypoint.py ./entrypoint.py

ENTRYPOINT ["./entrypoint.py"]
