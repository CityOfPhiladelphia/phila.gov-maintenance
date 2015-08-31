On an EC2 instance with packer installed execute the following command in this directory to
create an AMI:

```
sudo packer build template.json
```

Then create an instance:

```
aws ec2 run-instances --key-name philagov --instance-type t2.micro --associate-public-ip-address \
--image-id <ami-id> --subnet-id <vpc-subnet-id>
```
