In `frontDockerfile`, I changed `REACT_APP_BACKEND_URL=http://localhost:8000` to `REACT_APP_BACKEND_URL=http://localhost/api` so that requests are sent to the right place.

In `backDockerfile`, I changed `REQUEST_ORIGIN=http://localhost:5001` to `REQUEST_ORIGIN="http://localhost/"`, so that connection to backend service is not refused.

In `docker-compose.yml`, I added `db` and `redis` to the `depends_on` section of the `proxy`, so that it is more likely to receive a response from these services.

In `nginx.conf`, `_frontend-connection-url_` is now `http://frontend:5000/`, and `_backend-connection-url_` is `http://backend:8000/`. I use the name of the services (such as `frontend` and `backend`), and Docker handles the routing through internal DNS.
