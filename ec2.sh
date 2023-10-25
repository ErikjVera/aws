aws ec2 run-instances \
--image-id ami-0dbc3d7bc646e8516 \
--count 1 \
--instance-type t2.micro \
--region us-east-1 \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--associate-public-ip-address \
--security-group-ids sg-05be8783dceb1eec8 \
