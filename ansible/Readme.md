# Kubespray(Ansible supported)

Kubespray is Ansible based tool, we can tune the playbooks/roles based on our project requirement.

👉 [Kubespray GitHub Repository](https://github.com/kubernetes-sigs/kubespray)

Kubespray provides Ansible playbooks for deploying production-ready Kubernetes clusters.

<img width="25" height="25" alt="image" src="https://github.com/user-attachments/assets/f2aa495b-891c-4d99-9b0e-698e88732367" /> [RedHat - An introduction to Kubespray - Sample Cluster setup](https://www.redhat.com/en/blog/kubespray-deploy-kubernetes)


Pre-requisites and commands:

# Install Python 3.9 (if not installed)
sudo yum install python39 <br>

# Install specific Ansible version and dependencies
sudo pip3.9 install ansible-core==2.14.0 <br>
pip3.9 install jmespath <br>
sudo pip3.9 install ansible-lint <br>
sudo pip3.9 install netaddr <br>

# Install required Ansible collections
ansible-galaxy collection install ansible.posix <br>
ansible-galaxy collection install kubernetes.core <br>
ansible-galaxy collection install ansible.netcommon <br>
ansible-galaxy collection install community.general <br>

# Run Ansible playbook
ansible-playbook -i inventory/hot-cluster/hosts.yaml \
  --user bmoadmin \
  --become-method=sudo \
  cluster.yml \
  --skip-tags rhel-sub \
  -v
ansible-playbook -i inventory/standby-cluster/hosts.yaml \
  --user bmoadmin \
  --become-method=sudo \
  cluster.yml \
  --skip-tags rhel-sub \
  -v

**# Example ad-hoc:**
ansible all -i /kubespray/inventory/hot-cluster/hosts.yaml \
  -m ansible.builtin.setup \
  -a "filter='ansible_os_family'"


