Backend build and launch:

    docker build --file backDockerfile . --tag back
    docker run -p 8000:8000 back

Frontend build and launch:

    docker build --file frontDockerfile . --tag front
    docker run -p 5001:5000 front

Then visit http://localhost:5001/.
