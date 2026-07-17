## terraform-fundamentals
Level 1: What is Infrastructure as Code with Terraform
Learning: Got to understand what actually Terraform is, got to know the purpose of plan, initialize, etc.

- The most important aspect is that Terraform language is declarative. Also, state helps to track resources.

Level 2: Install Terraform
Learning: I am using Windows OS in my laptop, so accordingly saw a video and installed Terraform.

Level 3: Create Infrastructure
Learning: The provider block will specify which provider Terraform will use to provision your infrastructure. The resource block is used to configure other resources of that provider in main.tf.

- Datasource helps you to keep your configuration dynamic and avoid hardcoded values (this data source loads AMI).

- A resource block defines components of an infrastructure.

Level 4: Manage Infrastructure with Terraform
Learning: Added input variables and output to configure, and then used a module to configure a VPC for instances.

- In code, a variable defines instance names and types with default values for each. You can refer to these variables in your configuration instead of hardcoding the argument value.

- You can set Terraform variables in a number of ways including environment variables, command line arguments, and in files stored on disks.

- Output values allow you to access attributes from your Terraform configuration and consume their values with other automation tools and workflows.

- When you run terraform apply, it also displays your output variable values.

- Terraform stores your output values in your workspace’s state file.

- Terraform modules contain Terraform configurations just like the configuration in your workspace’s directory. Terraform refers to your configuration in your workspace directory as a root module, and any modules referenced by your modules are child modules.

- When Terraform creates an execution plan, it constructs a dependency graph to determine the correct order of operation. When you apply, Terraform creates or destroys your resources in dependency order and in parallel when possible.

- Resources configured within a module start with module followed by the name of the module. Like resource and data source addresses, module addresses must be unique in your configuration.

Level 5: Destroy
Learning: When you no longer need a workspace, use Terraform to destroy it. Terraform destroys resources when you remove them from your configuration and apply the change. You can also destroy all of the resources managed by your configuration with the terraform destroy command.

- To destroy specific resources in your workspace, first remove or comment them out in your configuration files. Be sure to remove or comment out any block that refers to your resources, such as output      values.

- When you apply your changes, Terraform will notice you have removed the resources and plan to destroy them. When you do not need any of the resources, use the terraform destroy command to destroy them.    Terraform destroy creates a plan to destroy all the resources from your workspace.

Level 6: Collaborate with HCP Terraform  
Learning: You can use Terraform to create, manage, and destroy infrastructure from your local machine.  

- Managing infrastructure from a local machine creates a single point of failure and makes it difficult to collaborate on infra projects with your team.  

- HCP Terraform securely allows you to perform plan and apply operations on your workspaces, and securely stores your Terraform state and variables including API tokens and access keys. The Terraform CLI    integrates with HCP Terraform so you can perform runs on your HCP Terraform workspace either from the command line or the HCP Terraform UI.

- You can also manage Terraform with your version control system (VCS) and have HCP Terraform plan and apply changes to your infra directly from your VCS.

- To login to Terraform HCP, run the command terraform login in the command line. Terraform will open a browser to create an API token. Copy and paste that token in the CLI if Terraform requests it.

- You can also specify a project name to allow you to group related workspaces together.
