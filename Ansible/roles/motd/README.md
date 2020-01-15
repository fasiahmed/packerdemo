motd
=========

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Introduction](#introduction)
- [Requirements](#requirements)
- [Variables](#variables)
- [Usage](#usage)
- [Author](#author)

<!-- /TOC -->

# Introduction

This role provides an automatic motd login information with your
Ansible Git repo.

Messages will be displayed to root, deploy and vagrant user only.

By simply adding this role, basic Ansible management information
(taken from *motd_ansible_managed_server* variable) and Git repo name that uses
this role will be displayed without any further configuration.

You are encouraged to also add a documentation link as third information.

Custom login information can also be displayed. Every file in
/etc/ansible_motd.d/ will be displayed in lexical order. It is your
responsibility to drop files in that directory.

# Requirements

- Ansible >= 2.4

# Variables

| Name | Description | Configuration | Default |
|:-----|:------------|:--------------|:--------|
| motd_ansible_managed_server | Message that shows this Server is ansible managed | Optional - in your Ansible environment | 'This Server is managed by Ansible. Any change will be overridden!' |
| motd_git_url | The name of the Git repo using this motd role will be shown here | Automatic | (no default) |
| motd_doc_url | Link to customer's environment documentation | **Please change** - in your Ansible environment | '<<<<< Please set motd_doc_url in your environment! >>>>>' |
| motd_deploy_info | Drop short deploy info onto a host | Optional - in host_vars | (undefined) |

# Usage

Example playbook (e.g. motd.yaml)

```yaml
- hosts: all
  roles:
  - role: motd
```

Place the following line in the roles section of your root site.yaml
or it's inludes:
```yaml
- role: motd

```

Example configuration, e. g. in group_vars/all/motd.yaml
```yaml
motd_doc_url: https://sparklink.collaboration.agilent.com/collector/pages.action?key=SRE
motd_deploy_info: "The SRE update information for this server"
```

Example command line:

```
ansible-playbook -i inventories/hosts motd.yml
```

# Author

[Andre Machowiak](mailto:fasi.syed@agilent.com)
