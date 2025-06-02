 Main learning from week 4 assignment: 

 ✅ What was done:  
1. Deployed Azure Infrastructure with Terraform:  
   - Created an Azure Resource Group (logical container for resources).  
   - Provisioned a Storage Account (cloud storage for files, blobs, tables, queues).  
   - Added a Blob Container (folder-like structure for storing unstructured data like CSVs, logs, images).  

2. Automated Cloud Deployments:  
   - Used Infrastructure as Code (IaC) to define and deploy Azure resources in a repeatable way.  
   - Learned how Terraform initializes, plans, and applies configurations.  

3. Verified & Managed Resources:  
   - Checked deployment success via Azure Portal and CLI.  
   - Learned how to destroy resources to avoid unnecessary costs.  


 📚 Key Learnings:  
✔ Terraform Basics – Writing `.tf` files, running `init`, `plan`, `apply`, and `destroy`.  
✔ Azure Storage Concepts – Storage accounts, blob containers, and access levels.  
✔ Automation & Reproducibility – Infrastructure as Code (IaC) ensures consistent deployments.  
✔ Cost Awareness – Always clean up test resources with `terraform destroy`.  

FURTHER READING:

Learning: 

Automated Cloud Deployments: 
Used Infrastructure as Code (IaC) to define and deploy Azure resources in a repeatable way by:

.TF files: Terraform configuration files are used for writing your Terraform code. They have a . tf extension and use a declarative language called HashiCorp Configuration Language (HCL) to describe the different components that are used to automate your infrastructure.
