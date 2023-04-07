#!/bin/bash

ssh -L 6060:localhost:6060 -L 8888:localhost:8888 -L 8080:localhost:8080 -L 4040:localhost:4040 userid@ip-address
