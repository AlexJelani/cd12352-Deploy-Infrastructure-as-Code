aws cloudformation create-stack  \
    --stack-name udacity-workflow-lesson \
    --template-body file://workflow-and-helpers.yml   \
    --parameters file://workflow-and-helpers-parameters.json   \
    # --capabilities "CAPABILITY_NAMED_IAM"  \
    --region=us-east-1
