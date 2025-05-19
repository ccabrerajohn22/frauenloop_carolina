My progress:

Terraform Task:
Initialise terraform locally with a local state:

Steps:

Install the Azure CLI: DONE
You will use the Azure CLI to authenticate with Azure.
Open your PowerShell prompt as an administrator and run the following command:
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

Authenticate using the Azure CLI: DONE
Terraform must authenticate to Azure to create infrastructure.
In your terminal, use the Azure CLI to setup your account permissions locally:
$ az login
Your browser will open and prompt you to enter your Azure login credentials. After successful authentication, your terminal will display your subscription information:

Subscription ID:  4c4c0d0a-9310-41e2-bdfb-644a34de5da8
Once you have chosen the account subscription ID, set the account with the Azure CLI.


Create a Terraform Working Directory: DONE
Create a new directory for your Terraform project using command line:
mkdir azure-terraform-project
cd azure-terraform-project



Create Terraform Configuration: DONE
Open VS Code
Create a new file named main.tf with basic configuration.
Save the file in your project directory.


Initialize Terraform with Local State: DONE
In your project directory, run:
terraform init
This will:
Download the Azure provider plugin
Set up the local backend (state will be stored in a local file)



Review the Execution Plan and apply the Configuration: DONE
Run terraform plan


Run: terraform apply

Verify Resources
Check the Azure portal to see your new resource group
Or use Azure CLI:


Local State File: 
After running terraform apply, you'll see a terraform.tfstate file in your directory
This file contains all the state information about your infrastructure
Keep this file secure as it may contain sensitive information




Tips:
Always run terraform plan before apply to review changes.
Keep your Terraform state file safe (consider version control for small projects or remote backends for production)
Use .gitignore to exclude terraform.tfstate and other sensitive files if using Git
This setup uses local state storage. For production environments, consider using remote backends like Azure Storage for state files.
