#!/bin/bash

# Check if 1 argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <stack_name>"
  exit 1
fi

# Assign argument to variable
stack_name=$1

# Execute AWS CLI command to delete the stack
aws cloudformation delete-stack --stack-name "$stack_name" --region=us-east-1
