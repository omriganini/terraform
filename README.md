# This will the final result of our project:
![system_design](https://user-images.githubusercontent.com/105926044/175485830-982d6170-94a7-412f-9071-ec3e89079b00.png)


# In this project we will use Terraform for the CI part and Ansible for the CD part


# Prerequisites for this project:
 * Microsoft Azure account, [Create Azure account](https://azure.microsoft.com/en-us/free/).
 * Terraform software on your computer [install guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
 * IDE for the deployment of the infrastructure [Pycharm](https://www.jetbrains.com/pycharm/download/#section=windows) or [Visual studio code](https://code.visualstudio.com/download) are my recommended.


# Azure:
* Azure is a cloud computing service operated by Microsoft for application management via Microsoft-managed data centers.
* It provides software as a service (SaaS), platform as a service (PaaS) and infrastructure as a service (IaaS) and supports many different programming languages, tools, and frameworks, including both Microsoft-specific and third-party software and systems.
* [What is cloud computing](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-cloud-computing/) [Cloud service providers](https://www.c-sharpcorner.com/article/top-10-cloud-service-providers/).

# Terraform:
* Terraform is an open-source infrastructure as code software tool created by HashiCorp.
* Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language
* [Learn about Terraform](https://www.terraform.io/intro).

# Ansible:
* Ansible is a suite of software tools that enables infrastructure as code. It is open-source and the suite includes software provisioning, configuration management, and application deployment functionality
* Ansible is agentless, relying on temporary remote connections via SSH or Windows Remote Management which allows PowerShell execution. The Ansible control node runs on most Unix-like systems that are able to run Python .
### in our project we will use one machine that will deploy our configuration to the rest of the machines via Ansible:
###### Prerequisites for this machine:
* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).
* [Python](https://www.python.org/downloads/)(usually arrives as part of the linux package)
* [How to use Ansible](https://spacelift.io/blog/ansible-tutorial).

# The process:
* After you have installed all the required softwares open the IDE that you have chose and [open this repo there](https://github.com/omriganini/terraform-ansible)(actually you don't need the Ansible directory for this part)
* Change the code for your selections (Names , passwords and etc).
* Deploy your Infrastructure [how to do that](https://learn.hashicorp.com/tutorials/terraform/azure-build?in=terraform/azure-get-started).

# and That's what you should see:
![azure portal](https://user-images.githubusercontent.com/105926044/178116551-04376192-67ce-4225-8055-df62cf352314.jpg)


# The CD part:
* In this part you have to enter to the "controller machine" and to set the connection between the other machines [how to use Ansible](https://spacelift.io/blog/ansible-tutorial) in this part you can use [those configuration files](https://github.com/omriganini/terraform-ansible/tree/master/ansible) and again to pay attention to the details which you fill in those files!


# Final result : 
![week6 staging](https://user-images.githubusercontent.com/105926044/178116708-7f5f8aac-a9ce-4523-a06e-2d45f8b34c55.jpg)


# Hope this helped you and you learned something new , enjoy from your app :)
