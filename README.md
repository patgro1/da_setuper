# da_setuper
Ansible playbook to setup completely a dev environment

# requirements
* git
* ansible
* sudo

# To use
```bash
ansible-galaxy collection install -r requirements.yml
ansible-playbook --ask-become-pass ./bootstrap.yml
```
