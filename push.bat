@ECHO ON
SET AWS_ID=352645159704.dkr.ecr.eu-west-3.amazonaws.com
SET REPO=%AWS_ID%%/taxmodel

docker context use default
aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin %AWS_ID%

docker tag taxmodel %REPO%
docker push %REPO%
