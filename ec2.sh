AWS_ID_GgrupoSeguridad_EC2ERIK=$(aws ec2 create-security-group \
--group-name 'grupoEC2ERIK' \
--description 'grupo para habilitar ssh' \
--output text)

aws ec2 authorize-security-group-ingress \
--group-id $AWS_ID_GrupoSeguridad_EC2ERIK 
--ip-permissions '[{"IpProtocol": "tcp", "FromPort": 22, "ToPort": 22, "IpRanges": [{CdrIp": "0.0.0.0/0", "Description": "Allow SSH" }]}]'

aws ec2 run-instances \
--image-id ami-0dbc3d7bc646e8516 \
--count 1 \
--instance-type t2.micro \
--region us-east-1 \
--key-name vockey \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=EC2ERIK}]' \
--security-group-ids AWS_ID_GrupoSeguridad_EC2ERIK  \
