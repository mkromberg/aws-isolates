SET PHONEBOOK_IMAGE=352645159704.dkr.ecr.eu-west-3.amazonaws.com/phonebook
SET PHONEBOOK_TYPE=volume
SET PHONEBOOK_DATA=phonebook-data
SET AWS_ID=352645159704.dkr.ecr.eu-west-3.amazonaws.com

aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin %AWS_ID%
docker context use phonebook
docker compose -p phonebook up --scale frontend=2