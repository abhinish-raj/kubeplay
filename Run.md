[controlplane]
44.214.141.175 ansible_ssh_pass=<password> ansible_user=cloud_user

[worker]
34.234.225.51 ansible_ssh_pass=<password> ansible_user=cloud_user

ansible-playbook -i inven.ini kube.yaml --ask-become-pass
--ask-pass
ansible-playbook -i inventory.ini kubernetes.yaml --ask-become-pass

ansible-playbook -i inventory.ini create_and_join_workers.yml --ask-become-pass

ansible-playbook -i inventory.ini -e "@ansible.cfg" -e "@kubernetes.yaml" kubernetes.yaml
ansible-playbook create_and_join_workers.yml

ansible-playbook -i inventory.yml playbook.yml -c /path/to/ansible.cfg

ansible-playbook kube.yml  \
--connection=local  \
-e "ansible_python_interpreter=/usr/bin/python3"

ansible.cfg
[defaults]
...
remote_user = cloud_user
ask_pass = True
ssh_connection = sshpass

ssh cloud_user@44.203.142.115
ssh cloud_user@34.238.125.12
ssh cloud_user@54.163.119.186

kubectl label nodes k8s-worker1 node-role.kubernetes.io/worker=""
kubectl label nodes k8s-worker2 node-role.kubernetes.io/k8s-worker2=""
node/k8s-worker2 unlabeled
kubectl label nodes k8s-worker2 node-role.kubernetes.io/k8s-worker2-




