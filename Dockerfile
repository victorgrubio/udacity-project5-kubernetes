FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /opt

## Step 2:
# Copy source code to working directory
COPY . /opt/app

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir -r /opt/app/requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
WORKDIR /opt/app
ENTRYPOINT ["python3", "app.py"]
