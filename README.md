# LINEAR PROGRAMMING

-   **Author**: Haizea Rumayor Lazkano
-   **Last update**: February 2025

------------------------------------------------------------------------
## Overview

This project provides **linear programming solutions** for various optimization problems using the **PuLP** library.  

This repository includes problem definitions, constraints, objective functions, and interpretations of results for the following problems:  

- **Bin Packing Problem**: Given `n` items with weights `w1, w2, ..., wn` and an arbitrary number of bins with a maximum carry weight `C`, determine the **minimum number of bins** required to contain all the items without exceeding their weight capacity.

- **Bipartite Maximum Perfect Matching Problem**: Given an undirected bipartite graph where nodes represent `people` and `jobs`, and `weighted edges` indicate how well a person is suited for a job, determine the **most suitable person - job match**, ensuring each person is assigned to exactly one job in the most optimal way.    
 
- **Farmer's Problem**: Given `3 tons of potato` seeds, `4 tons of carrot` seeds, and `5 tons of fertilizer`, where planting requires a `1:1 ratio` of seeds to fertilizer, determine the **optimal amount of potatoes and carrots to plant** to maximize profit, given that potatoes yield `$1.2/kg` and carrots yield `$1.7/kg`.

- **Knapsack Problem**: Given `n items`, each with a specific `weight` and `price`, determine the **maximum total price** of items that can be placed in a backpack without exceeding its carry weight of `M`.

- **Partition Problem**: Given `n` items with weights, determine how to **split them into two parts** such that the **difference in their total weights** is minimized.  

- **Vertex K-Coloring Problem**: Given a graph `G`, determine the **minimum k** for which the graph is **vertex-k-colorable**, meaning no two adjacent vertices share the same color.  


## Project Structure

The project is organized in the following directories:

- **src/**: It contains several linear programming problems solution jupyter notebooks.
- **requirements.txt**: Lists the Python packages required to run the project.
- **Dockerfile**: Used to launch the project in a Docker container.

## Installation and Run Steps

To ensure a clean and isolated environment for this project, a `Dockerfile` is provided to launch Docker locally and run a Python 3.7 container. This approach ensures that the local environment remains unaffected and that all dependencies are installed within the container.

### Prerequisites:

- **Docker** must be installed on your machine. You can download and install Docker from the [official website](https://www.docker.com/get-started).

### Steps to Set Up and Run the Project:

1. **Build the Docker Image**:

   First, build the Docker image for the project using the provided `Dockerfile`. Replace `<app-name>` with the name of your application or service:
   ```bash
   docker build -t <app-name> .
   ```

2. **Run the Docker Container**:

   After building the image, run the container using the following command:
   ```bash
   docker run -it --rm -p 8888:8888 -v ${PWD}:/app <app-name>
   ```

  This command will:

- Mount your current directory (`${PWD}`) to the `/app` folder inside the container.
- Map port `8888` from the container to your local machine, allowing access to Jupyter.
- Automatically remove the container when it stops (`--rm`).


3. **Access Jupyter Notebooks**:

   Once the container is running, you can access the Jupyter notebook interface by opening your browser and navigating to `http://localhost:8888`.


If you execute the scripts presented in the project, the results will be created and saved in the container. If you want to retrieve the results locally, follow these instructions:

**Retrieve resuts locally**   
   
   Identify the running Docker container:
   ```bash
    docker ps
   ```

   Navigate to the project directory and copy the file from the container to your local machine, replacing `<docker_instance>` and `<docker_path_to_retrieve>` with the corresponding values.
   ```bash
    docker cp <docker_instance>:/<docker_path_to_retrieve> .
   ```
