FROM ubuntu

RUN apt-get update \
	&& apt-get install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa \
	&& apt-get update \
	&&apt-get install -y curl python3.9 python3-distutils groff\
	&&curl -O https://bootstrap.pypa.io/get-pip.py \
	&&python3 get-pip.py \
	&&pip3 install awscli --upgrade

CMD ["/bin/bash"]
