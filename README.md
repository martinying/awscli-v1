# awscli-v1
Dockerfile of awscli version 1

This starts from the latest Ubuntu and installs python 3.9 and pip.  Using that it's following the AWS pip installation of version 1:
https://docs.aws.amazon.com/cli/latest/userguide/install-linux.html#install-linux-pip
It'll start the image using /bin/bash

Suggested usage is to create a container from this and set up profiles to be able to execute aws cli commands successfully.  One way to set up a default profile from within the conatiner is:
  aws configure
Enter the information prompted.  This will set up the default profile for the aws commands executed in the container.
