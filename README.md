# Terraform Basics

This repository contains Terraform scripts to deploy resources. Follow the steps below to set up and manage your infrastructure.

## Prerequisites

1. **Azure Login**: Ensure you are logged in to your Azure account using `az login`.

2. **Create .tfvars File**: Create a `.tfvars` file to assign values to variables. Example:

    ```hcl
    resource_group           = "YourResourceGroupName"
    resource_group_location  = "YourAzureRegion"
    service_plan             = "YourServicePlanName"
    service_plan_sku         = "YourSku"
    web_app_name             = "YourWebAppName"
    ```

## Usage

1. **Initialize Terraform**: Run the following command to initialize the Terraform configuration:

    ```bash
    terraform init
    ```

2. **Apply Changes**: Deploy the resources by running:

    ```bash
    terraform apply
    ```

3. **Enjoy Your Resources!**: Once the deployment is complete, your Azure resources will be ready for use.

## Important Note

Always review and customize the values in the `.tfvars` file to suit your requirements before applying changes.

Happy Terraforming!
