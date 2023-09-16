ansible:
	ansible-playbook provision.yml -i hosts

terraform:
	terraform apply -y

setup: terraform ansible