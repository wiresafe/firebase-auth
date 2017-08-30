#!/usr/bin/env bash

docker run --name firebase-auth -p 8080:80 -d --rm gcr.io/wiresafe-project/firebase-auth
open http://localhost:8080
