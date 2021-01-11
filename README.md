#### Apache Airflow 2.0 Sandbox Environment

This project is a demonstration of a docker setup for Airflow 2.0.  It will bring up a postgres database, initialize the airflow tables, create a default admin user, and start the webserver and scheduler. This is a useful configuration for experimenting with Airflow locally.

#### Getting started

If you like, you can change the credentials for the default user under `./scripts/initialize.sh`, otherwise the default username is `admin` and the password is `password`. This project is really only appropriate to run on machines that are not publically accessible, so password security isn't a huge concern here.

Then simply start the services via docker-compose, this will pull the necessary images automatically if needed:

```
docker-compose up
```

> NOTE: that the scheduler and webserver may bounce a few times early on while the initialize job is creating the necessary tables and users, but they should retry until they eventually succeed.

Once the webserver is running you can load http://localhost:8080/home and begin to explore!

#### Adding DAGs

You can add DAGs under `./dags`, then just restart the stack and it should appear in the dashboard. The example provided here is copied from the Airflow documentation tutorial: https://airflow.apache.org/docs/apache-airflow/stable/tutorial.html
