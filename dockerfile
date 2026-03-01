# use slim python image
FROM python:3.11-slim

WORKDIR /app

# install system dependencies for matplotlib/pandas if neeeded
RUN apt-get update && apt-get install -y --no-install-recommends \
build-essential \
&& rm -rf /var/lib/apt/lists/*

## Copy requirements file and install it inside the image
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt jupyter

## copy the notebook file

COPY proj_python_data.ipynb .

## expose the port so that jupyter server can see it
EXPOSE 8888

# Command to run the notebook

CMD [ "jupyter" , "notebook", "--ip=0.0.0.0" , "--port=8888", "--no-browser", "--allow-root" , "--NotebookApp.token=''" ]