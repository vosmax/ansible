
# Ansible playbook
For minkube and django-todo deploy

Just set variables for chart n values.yaml and variales to configure host. 
Variables have desribption in vars folder

Basicly, it's enough to set *helm_chart.web.host* variable and put *host* to hosts file in inventory to have a great chance work this app.

Use test inventory for test playbook (dont forget define address of test host in hosts file!):


```bash
ansible-playbook playbook.yml -i test
```

Or use  molecule for testing
```bash
molecule test
```

**Notes:** 
- Minikube cluster configs are located in root home folder

- Minikube needs at least 2 CPUs host. Don`t forget!

- Tested on Ubuntu 16, Ubuntu 18. Not yet available for OS which doesn`t use _apt_ manager. In progress...