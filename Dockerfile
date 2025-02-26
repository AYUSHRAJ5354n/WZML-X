FROM docker.io/mysterysd/wzmlx:latest

WORKDIR /usr/src/app

# Update setuptools to avoid compatibility issues
RUN pip3 install --upgrade setuptools

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

# Replace with your command to start the application
CMD ["bash", "start.sh"]
