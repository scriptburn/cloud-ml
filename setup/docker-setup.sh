
#!/bin/sh
apt update -y 

 
apt install -y python python-pip
pip install -r /setup/requirements.txt

 usermod -u 1000 www-data 
 a2enmod rewrite
 a2enmod headers
 a2enmod expires

 
curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz

 mkdir -p /usr/local/gcloud \
  && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
  && /usr/local/gcloud/google-cloud-sdk/install.sh


PATH=$PATH:/usr/local/gcloud/google-cloud-sdk/bin

 