# run nrg test on the instance of the mule soft
docker run --net muleNetwork -t muleindocker/newman:latest --collection="collection/muleInDocker-nrg.postman_collection.json" --environment="environment/DEV.postman_environment.json" --html="newman-results.html" --name newmanContainer
