# muleInDocker

The project id to being able to build a full mule project and to run it on a Docker container.
With the nrg test and the performance one.

# Run the project step by step

## Needed

-> internet connection
-> docker engine

## Process

I made some script to make it easy to use.
The live cycle of the project is the following:
-> clean.sh: you can clean you workspace if you want with.
-> build.sh: build the projec.
-> start.sh: start mule an build the zip of the mule project.
-> deploy.sh: when the maven container stop that mean you can deploy your zip inside your volume (mount on mule containre)
-> testNrg.sh: it's will run the nrg test and show in the terminal the result.
