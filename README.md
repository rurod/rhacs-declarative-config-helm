# Red Hat Advanced Cluster Security - Declarative Config - Helm Chart

Disclaimer: This project is not maintained by Red Hat. It's communautary work only.

## What is Red Hat Advanced Cluster Security (RHACS)?

[Red Hat Advanced Cluster Security (RHACS)](https://www.redhat.com/en/technologies/cloud-computing/openshift/advanced-cluster-security) is a comprehensive security solution designed to protect your Kubernetes environments. It provides features such as vulnerability scanning, runtime protection, and compliance monitoring to ensure the security of your clusters and workloads. RHACS enables organizations to enforce security policies, identify and mitigate risks, and maintain secure configurations across the lifecycle of containerized applications.

## Purpose of this Helm Chart

This Helm chart is designed to simplify the management of RHACS Declarative Configurations in your Kubernetes clusters. RHACS can be configured using YAML files, but the configuration can often become complex when deploying across multiple environments or clusters. This Helm chart streamlines the process by providing a consistent and repeatable way to deploy the RHACS declarative configuration resources.

By using this Helm chart, you can:

- **Easily deploy RHACS configurations**: Simplify the process of configuring RHACS in your environment with templated and customizable YAML files.
- **Ensure consistency**: Apply consistent configurations across your Kubernetes clusters using Helm templating.
- **Automate updates**: Easily manage and update RHACS configuration by upgrading the Helm release.
- **Improve scalability**: Quickly apply the same configuration to multiple clusters or environments using Helm's ability to manage Kubernetes manifests.

### Compatibility

| RHACS Version 	| Chart Version 	| Tested  |
|---------------	|---------------	|-------- |
| 4.5.x           	| 0.0.1              	| ✅      |
| 4.4.x           	| 0.0.1              	| ✅      |
| 4.3.x           	| 0.0.1             	| ✅      |

### Documentation

Detailed documentation can be found in the docs directory.

### Contributing

Contributions to this Helm chart are welcome! If you find bugs, or have suggestions for improvements, please feel free to open an issue or submit a pull request.

### License

This Helm chart is distributed under the [MIT License](https://opensource.org/license/MIT), see LICENSE.txt for more information.
