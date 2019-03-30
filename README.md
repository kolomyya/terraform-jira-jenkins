# Deploy the Jenkins with Terraform

This repo  deploy a Jenkins on Kubernetes cluster  using Terraform. Jenkins is a distributed automation server, generally associated with Continuous Integration (CI) and Continuous Delivery (CD). A Jenkins cluster typically involves one or more master instance(s) coupled with one or more slave instance(s)




# We have created Terraform files to deploy terraform code:

```
jenkins-deployment.tf
jenkins-srv.tf
```

Run ```terraform init```.

Run ```terraform plan```.

If the plan looks good, run ```terraform apply```.

When apply finishes, it'll output the domain name of your server. Head over to that URL and you'll be prompted to login to Jenkins.

# Login to Jenkins

When you first load Jenkins, it will ask you to enter the initial admin password to unlock it. This password is located on the Jenkins server itself and the initial login page will show you the path (typically, ```/jenkins/secrets/initialAdminPassword```). You'll need to SSH to the server to get the password.
