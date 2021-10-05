FROM python:latest

LABEL version="0.1"

LABEL description="Webhook"
LABEL author.name="Q.SaiBot" \
      author.email="Q.SaiBot@GMail.com"

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# TODO: Проверить, будет лт работать относительный путь.

COPY ./app /code/app

VOLUME ["/code"]

EXPOSE 80

HEALTHCHECK --start-period=30s \
            --interval=1m \
            --timeout=20s \
            --retries=3 \
            CMD curl -f http://localhost/healthcheck || exit 1

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]