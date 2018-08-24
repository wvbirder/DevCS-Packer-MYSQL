FROM hashicorp/packer:full
 
ADD build.json ./
ADD oci_api_key.pem ./
WORKDIR /home/opc
COPY changeRootPWD.sql /home/opc
COPY createProducts.sql /home/opc
COPY createUserAlpha.sql /home/opc
COPY setupAlphaMYSQL.sh /home/opc
COPY . .

RUN packer build build.json
