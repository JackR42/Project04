# Project04

1. Determine project name, eg: Project42
2. Create empty GitHub repository with Readme.MD, e.g.: GitHub Project42
3. Run prerequisites script: AZ-GH-TF-Pre-Reqs.ps1
	a. Create Core resource group for the project
	b. Create KeyVault for Secrets
	c. Create Storage account for stateful Terraform Backend
	d. Create SPN -Service Provider for connecting Azure DevOps Pipeline
	e. Validate if all Core resources have been created
4. Create empty Azure Devops project
5. Connect AzureDevops pipeline to Github repo
6. Create Service Connection from Azure DevOps Pipeline to Azure backend
7. Create empty Pipeline, using SPN to Azure and service connection to Azure
8. Create Terraform template main.tf with basic commands for creating basic resource from KeyVault parameters
9. Run Pipeline and validate if Project resources have been created
