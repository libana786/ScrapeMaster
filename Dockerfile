FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that ScrapeMaster runs on
EXPOSE 8501

# Command to run the application
CMD ["streamlit", "run", "streamlit_app.py"]

