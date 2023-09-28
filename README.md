# Terraform Beginner Bootcamp 2023

Welcome to the Terraform Beginner Bootcamp for 2023! In this guide, we'll walk you through the necessary steps to set up your environment and get started with Terraform.

## Utilize Gitpod CLI

To efficiently manage your workspace, you can use the Gitpod CLI. It allows you to stop and start your workspace as needed. You can find more information on how to use it [here](https://www.gitpod.io/docs/references/gitpod-cli).

## How to Stop the Workspace
To stop your workspace, you can use the Gitpod CLI with the following command:

```
gh stop
```

## Install the Terraform CLI

Installing the Terraform CLI is a crucial step to begin your Terraform journey. Follow these steps to set up Terraform:

1. Check your Linux Distribution:
   - This project is primarily built against Ubuntu. If you are using a different Linux distribution, please ensure compatibility by adjusting the syntax as needed.

2. [Install Terraform CLI](https://www.gitpod.io/docs/configure/workspaces/tasks):
   - Refer to the official Gitpod documentation for detailed instructions on how to configure your workspace tasks, including Terraform installation.

## Refactoring into Bash Scripts

To address Terraform CLI GPG deprecation issues and improve the installation process, we've created a Bash script that streamlines the installation steps.

You can find the Bash script [here](.gitpod.yml).

### Considerations for Linux Distribution
This project is built against Ubuntu
Please consider checking your Linux Distro and change according to distro needs 
How to check OS Version
```
cat /etc/os-release
```

### GitHub Lifecycle (Before, Init, Command)
When working with Gitpod and GitHub, it's essential to understand the lifecycle of your workspace in different stages, including Before, Init, and Command. However, it's important to note that the Init stage won't rerun if you restart an existing workspace. This behavior can impact your development process, so it's crucial to be aware of it.

For more detailed information on how these stages work and their implications, you can refer to the Gitpod documentation.

Understanding these lifecycle stages will help you effectively manage your Gitpod workspace and streamline your development workflow with Terraform.


### Benefits of Using the Bash Script

Using a Bash script for Terraform CLI installation offers several advantages:

- **Maintaining a Tidy Task File:** By isolating the installation steps in a separate script, we keep the Gitpod Task File ([.gitpod.yml](.gitpod.yml)) tidy and easier to manage.

- **Simplified Debugging:** Debugging becomes more straightforward when the installation process is encapsulated in a script. It also simplifies the automation of manual Terraform CLI installations.

- **Improved Portability:** The Bash script enhances portability, making it easier to reuse the same installation process for other projects that require Terraform CLI.

By following these steps and utilizing the provided Bash script, you'll have a smooth experience setting up Terraform for your projects.

Happy Terraforming!
