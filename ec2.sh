aws ec2 run-instances \
--image-id ami-050406429a71aaa64 \
--count 1 \
--instance-type t2.micro \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--subnet-id subnet-xxxxxxxxxxxxxxxxx \  # Reemplaza con la ID de tu subnet pública
--associate-public-ip-address \
--security-group-ids tuvockeysecuritygroupid \  # Reemplaza con el ID de tu grupo de seguridad vockey
--region us-east-1
