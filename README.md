# Qlik-assignment

This is a simple RESTful python Flask application with the following feature set:
1. Create messages.
2. Delete messages on request.
3. Get a specific message and checks if it is Palindrome. 
4. List all the Messages posted till now.

The project dockerizes the flask application and deployes it over a EC2 instance exposed over public subnet on AWS. 
Terraform is being used as the preferred provisioning tool while Ansible is used for application deployment.

## Requirements 
This project needs the following packages installed on your machine (control host) preferably linux.
1. Terraform Version : Terraform v0.11.9
2. Ansible Version : Ansible 2.4.0.0
3. Boto Version: 2.49.0 (Required on Ansible host to run base.yml)
4. AWSCLI Version: 1.16.32

## Setup & Depolyment

Once you have installed all the mentioned packages please follow the guide below on your control host to get the application deployed on to aws.

1. Configure your AWS Credentials the following way with 2 blocks namely `terraform` and `default` at your home under `./aws/credentials`

```bash
[default]
aws_access_key_id = XXXXXXXXXXXXXXX
aws_secret_access_key = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

[terraform]
aws_access_key_id = XXXXXXXXXXXXXXX
aws_secret_access_key = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

```
2. Clone the Github Repo 

```bash
git clone https://github.com/nishant704/qlik-interview.git
```

3. Use Terraform to spin your infrastructure, this step creates a full fledged production VPC and subnets skeleton to deploy the ec2 application

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
