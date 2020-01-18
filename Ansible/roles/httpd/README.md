Ansible role httpd
=========
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Variables](#variables)
- [Tags](#tags)
- [Usage](#usage)
- [Author](#author)

<!-- /TOC -->

# Introduction


# Requirements


# Variables

| Name | Description | Default |
|:-----|:------------|:--------|
| httpd_package_names | List of packages to ensure | ? |
| httpd_package_state | Package state | installed |
| httpd_service_names | List of service name | ? |
| httpd_service_state | Service state | running |
| httpd_service_enabled | Service enabled | true |

# Tags

- httpd: run all tasks from this role
- httpd-install: ensure that all packages in __httpd_package_names__ are in state __httpd_package_state__
- httpd-config: ensure configuration
- httpd-service: ensure that all services in __httpd_service_names__ are in state __httpd_service_state__

# Usage

Example playbook

```yaml
- hosts: 127.0.0.1
  roles:
  - role: httpd
```

# Author
[Fasi Ahmed](mailto:fasi.syed@agilent.com)
