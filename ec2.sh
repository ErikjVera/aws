aws ec2 run-instances \
--image-id ami-050406429a71aaa64 \
--count 1 \
--instance-type t2.micro \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--subnet-id subnet-0123456789abcdef0 \  # Asegúrate de que sea una subnet pública
--associate-public-ip-address \  # Esto asigna una IP pública a la instancia
--region us-east-1
