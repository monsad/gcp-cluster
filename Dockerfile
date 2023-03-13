# Use official lightweight Python image as base OS.
FROM python:3.7-slim
# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
# Install production dependencies.
RUN pip install fastapi uvicorn[standard] gunicorn
ENV PORT 8080
#Run the web service on container startup using gunicorn webserver.
CMD exec gunicorn --bind :$PORT --workers 1 --worker-class uvicorn.workers.UvicornWorker  --threads 8 main:app