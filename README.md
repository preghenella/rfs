# RFS - Roby Fast Simulation

This set of tools provides an environment to run fast Monte Carlo simulations.

## Docker

The package provides a `Dockerfile` to build a container from scratch. You are free to modify the settings as you wish, otherwise you can just use the current settings.  

To build and then the container  
`docker build -t rfs .`  
`docker run --rm -it rfs`  
Notice that you need to build the container only once, but you can run it multiple time.

If you don't want to build the container from scratch, you can download an already built container  
`docker pull preghenella/rfs`  
and run it  
`docker run --rm -it preghenella/rfs`  

### bin/rfsEnv

This file sets the environment variables.  

Run  
`$ ./tp7env.sh`  
to load the software environment. The shell prompt will be modified to signal that you are within the RFS software environment.
