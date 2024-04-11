#!/bin/bash
GOOS=linux go build -o main main.go
zip lambda_function.zip main
