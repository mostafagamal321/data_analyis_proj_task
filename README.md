# TASK : DATA_ANALYSIS Task
#### Name: Mostafa Gamal Hamed
#### Track: Data Engineering
#### Branch: Fayoum University

# Project Overview
This project fetches user data from the DummyJSON API, processes it using Pandas, and provides an interactive Jupyter Notebook environment for 
visualization with Seaborn and Matplotlib.

# Prerequisites:
The project is containerlized so you only need to have docker!

# Usage:
1. Build the Image
 ```bash
docker build -t my-data-project .
```
2. Run the container
   Run the following command to start the Jupyter server.
Note: We use volumes (-v) so your notebook changes are saved back to your computer.
```powershell
docker run -p 9000:8888 -v ${PWD}:/app my-data-project
```
For Mac/Linux/Git Bash:
```bash
docker run -p 9000:8888 -v $(pwd):/app my-data-project
```
3. Access the Project
Once the container is running, open your browser and go to:
👉 http://localhost:9000
