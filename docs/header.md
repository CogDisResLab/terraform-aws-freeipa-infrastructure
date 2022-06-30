# Basic FreeIPA Infrastructure

This repository lays out a module that allows you to quickly bootstrap a basic
infrastructure that can be used to run a FreeIPA Server. This DOES NOT install
the FreeIPA Server however. For that, I would recommend you use the
[official Ansible Playbook](https://github.com/freeipa/ansible-freeipa).

This repository is a labor of necessity rather than love. I had to write this
while I was refactoring our rather large terraform module into smaller and more
independent modules. Thus, this repository is a bit of a mess. However, since
it serves the purpose it should, I'm okay with it.
