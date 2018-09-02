# run nrg test on the instance of the mule soft
docker run --name newmanContainer --net muleNetwork --ip 172.19.0.4 -t muleindocker/newman:latest --collection="collection/muleInDocker-nrg.postman_collection.json" --environment="environment/DEV.postman_environment.json" --html="newman-results.html"

# remove the docker after the test is end
docker rm newmanContainer
