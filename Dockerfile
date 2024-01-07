FROM python:3.12-bullseye

RUN pip install pipenv

ENV PROJECT_DIR=/app

WORKDIR ${PROJECT_DIR}

COPY Pipfile Pipfile.lock ${PROJECT_DIR}

RUN pipenv install --system --deploy

COPY ./src ${PROJECT_DIR}

EXPOSE "8000:8000/tcp"

CMD python manage.py runserver 0.0.0.0:8000