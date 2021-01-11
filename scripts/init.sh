#!/usr/bin/env bash
airflow db init
airflow users create -e admin@example.com -f Administrator -l User -p password -r Admin -u admin
# TODO: Add other default records here
