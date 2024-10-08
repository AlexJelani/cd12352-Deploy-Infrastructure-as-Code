#!/bin/bash

# Check if 3 arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <stack_name> <template_file> <parameters_file>"
  exit 1
fi

# Assign arguments to variables
stack_name=$1
template_file=$2
parameters_file=$3

# Execute AWS CLI command with provided arguments
aws cloudformation create-stack  \
    --stack-name "$stack_name"  \
    --template-body file://"$template_file"   \
    --parameters file://"$parameters_file"   \
    --region=us-east-1 
