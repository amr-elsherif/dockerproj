FROM python:3.7.4-stretch

# Working Directory
WORKDIR /app

# Copy source
COPY . app.py /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip==20.2.2 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
