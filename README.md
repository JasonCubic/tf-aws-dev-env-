# Terraform AWS Dev Env

- <https://youtu.be/iRaai1IBlB0>
- <https://courses.morethancertified.com/p/rfp-terraform>
- Course code: <https://github.com/morethancertified/rfp-terraform>

---

```bash

terraform init
terraform plan
terraform apply
terraform destroy
terraform apply -auto-approve

```

state is the most important feature in terraform: <https://developer.hashicorp.com/terraform/language/state>

- to list all items in terraform state: `terraform state list`
- To show details for an item from that list: `terraform state show aws_vpc.my_vpc`
- To just dump all of the details in the state: `terraform show`

---

## how the ssh keypair was made

1. `ssh-keygen -t ed25519`
2. save to `C:\Users\jacubic\.ssh\my-awskey`
3. skipped passphrase
4. to verify the files `my-awskey` and `my-awskey.pub` were created, run: `ls -al ~/.ssh`

---

## ssh into the linux box running in AWS

get the public IP address from the vm

1. get the list of state items: `terraform state list`
2. show the VM details: `terraform state show aws_instance.dev_node`
3. find the public IP address
4. ssh into it (replace the IP with the real IP): `ssh -i ~/.ssh/my-awskey ubuntu@123.123.123.123`
5. get the release info `cat /etc/*release` or `lsb_release -a`

---

## to redeploy the VM

```bash
terraform apply -replace aws_instance.dev_node
```

---

## to see output if you missed it during the run

```bash
terraform output
```
