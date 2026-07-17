# terraform-fundamentals
#Level 1: What is infrastructure as code with terraform
learning: Got to understand what actually terraform is, got to know purpose of plam, initialize etc..
most important terraform lang is declarative also state helps to tracj resources

#Level 2: Install terraform
learning: i am using windows OS in my laptop so accordingly saw video and installed terraform

#Level 3: Create Infrastructure
learning: Provider block will specify which provider terraform will use to provision your infrastructure, resource
block is used to configure other resources of that provider in main.tf 
- Datasource help you to keep your configuration dynamic and avoid hardcoded value this data source loads ami.
- A resource block defines components of an infrastructure

#Level 4: Manage infrastructure with terraform
learning: Added Input variables and output to configure and than used module to configure a VPC for instances.
- In code this variable defines instance name and types with default values for each you can refer this variables in your configuration instead of hardcoding the argument value. 
- You can set terraform variables in number of ways including environment variable, command line arguments and in files stored on disks
- Output values allows you to access attributes from your terraform configuration and consume their values with other automation tools and workflow.
- When you do terraform apply it also displays your output variable values
- Terraform stores your output values in your workspace’s state file.
- Terraform modules contain terraform configuration just like the configuration in your workspace’s directory, terraform refers to your configuration in your workspace directory as a root modules and any       modules referenced by your modules is child modules
- When terraform creates an execution plan it constructs a dependency graph to determine the correct order of operation when you do apply terraform created or destroys your resources in dependency order and    in parallel when possible
- Resource configured within a module start with module followed by the name of the module like resources and data source addresses module address must be unique in your configuration.

#Level 5: Destroy
learning: When you no longer need workspace use terraform to destroy it, terraform destroys resources when your remove them from your configiration and apply the change, you can also destroy all of the resources    managed by your configuration with the terraform destroy command.
- To destroy specific resources in your workspace first remove or comment them out in your configuration files, Be sure to remove or comment out any block that refers to your resources such as output        values
- When you apply your changes terraform will notice you have removed the resources and plan to destroy them, When you need any of the resources use terraform destroy command to destroy it, terraform         destroy creates a plan to destroy all the resources from your workspace.

#Level 6: Collaborate with HCP Terraform
Learning: You can use terraform to create, manage and destroy infrastructure from your local machine.
- Managing infrastructure from local machine creates a single point of failure and makes it difficult to collaborate on infra project with your team
- HCP terraform securely allows you to perform plan and apply operation on your workspace’s and securely stores your terraform state and variables including api token and access key. The terraform CLI       integrates with HCP terraform so you can perform runs on your HCP terraform workspace either from command line or HCP terraform UI.
- You can also manage terraform with your version contarol system and have HCP terraform plan and apply changes to your infra directly from your VCS.
- Login to terraform HCP, hit command as terraform login in command line terraform will open one browser to create an API token copy and paste that token in CLI if terraform wants you to do so.
- You can also specify project name to allow you to group related workspaces together
