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

3. Use Terraform to spin your infrastructure, this step creates a full fledged production VPC and subnets skeleton to deploy the flask application

```bash
~/qlik-interview$ cd terraform/

#Move inside global

~/qlik-interview/terraform$ cd global/

~/qlik-interview/terraform/global$ ls
A-S3-Terraform  B-Dynamo-DB-State_LOCK  C-VPC  D-EC2-Initial

# Move inside each Directory alphabetically to spin up your infra on AWS and run "terraform apply"

~/qlik-interview/terraform/global/A-S3-Terraform$ terraform  apply
$ cd..
~/qlik-interview/terraform/global/B-Dynamo-DB-State_LOCK$ terraform apply
$ cd..
~/qlik-interview/terraform/global/C-VPC$ terraform apply
$ cd..
~/qlik-interview/terraform/global/D-EC2-Initial$ terraform apply

Copy the instance Public IP from the Outputs above 'app-instance-eip ='
```
This Completes your infrastructure provisioning setup.

4. Use Ansible to deploy the flask application   

```bash
~/qlik-interview/ansible-playbooks$ ls
base.yml  deploy-app.yml  hosts  roles

###############################################################################
~/qlik-interview/ansible-playbooks$ vi hosts
[flask-app]
<PASTE THE COPIED IP HERE>

[all:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/qlik
##############################################################################
Run The base role First to prep the system

~/qlik-interview/ansible-playbooks$ ansible-playbook -vi hosts base.yml

Finally Run the deploy-app.yml playbook to deploy the application

~/qlik-interview/ansible-playbooks$ ansible-playbook -vi hosts deploy-app.yml

```
The appication is now deployed and can be accessed by hitting the Public IP on port 80

ex: http://54.143.123.4


## Bug Reporting And Security

Please raise all bugs to me, The application is currently a very minimal version and has not been tested for Production traffic and scalability !
