# EKS Credential plugin

This plugin will setup EKS credentials for Env0 containers at run-time for use cases where you don't want to rely on setting Kubernetes credentials at a Project level in Env0.

## Requirements

- The parent Project must have AWS credentials with permissions to manage your target EKS cluster.
- The Environment must have the following environment variable(s):
- TARGET_EKS_CLUSTER: name of EKS cluster

## Example Usage

Include this plugin after the Setup Variables step in your Custom Flow like so:

```yaml
version: 2
deploy:
  steps:
    setupVariables:
      after:
        - name: Set EKS Credentials
          use: https://github.com/Slickdeals/env0-plugin-eks-credentials.git@main
```
