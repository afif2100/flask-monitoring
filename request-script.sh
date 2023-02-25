#usr/bin/bash

siege -c 1 -r 10000 http://localhost:8000/
siege -c 1 -r 5 http://localhost:8000/io_task
siege -c 1 -r 5 http://localhost:8000/cpu_task
siege -c 1 -r 3 http://localhost:8000/random_sleep
siege -c 1 -r 10 http://localhost:8000/random_status


hey -c 10 -z 600s http://localhost:8000/