# Use a this Python image
FROM python:3.7

# Set the working directory inside the container
WORKDIR /usr/local/app

# Install Jupyter application dependencies
RUN pip install --no-cache-dir jupyter
COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Command to run Jupyter notebook in the container
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
