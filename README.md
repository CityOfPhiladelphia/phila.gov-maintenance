Create an instance with the following command:

```
aws ec2 run-instances --user-data file://bootstrap.sh --key-name philagov --instance-type t2.micro \
--associate-public-ip-address --image-id ami-d05e75b8 --subnet-id <vpc-subnet-id>
```
