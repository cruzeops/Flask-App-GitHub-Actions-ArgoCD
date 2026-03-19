FROM python:3.15.0a7-alpine3.22

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Expose the port that the Flask app will run on
EXPOSE 5001

# Run app.py when the container launches
CMD ["python3", "app.py"]
