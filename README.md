# Ansible playbook
For minkube and django-todo deploy

Just set variables for chart n values.yaml and variales to configure host. 
Variables have desribption in vars folder

Use test inventory for test playbook (dont forget define address of test host in hosts file!):

```sh
ansible-playbook playbook.yml -i test 
```

Or use  molecule for testing

**Note:** Minikube cluster configs are located in root home folder