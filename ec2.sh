aws ec2 run-instances \
--image-id ami-050406429a71aaa64 \
--count 1  \
--instance-type t2.micro \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--region us-east-1
