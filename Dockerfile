FROM hashicorp/packer:full
 
ADD build.json ./
ADD oci_api_key.pem ./
WORKDIR /home/opc

RUN packer build build.json
