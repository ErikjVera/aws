aws ec2 run-instances \
--image-id ami-050406429a71aaa64 \
--count 1 \
--instance-type t2.micro \
--region us-east-1 \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--associate-public-ip-address \
--security-group-ids sg-05be8783dceb1eec8 \  # Reemplaza con el ID de tu grupo de seguridad vockey

