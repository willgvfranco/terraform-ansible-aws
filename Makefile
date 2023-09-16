ansible:
	ansible-playbook provision.yml -i hosts

terraform:
	terraform apply -y

setup: terraform ansible

terraform-dev:
	terraform -chdir=env/dev apply

terraform-prod:
	terraform -chdir=env/prod apply

ansible-prod:
	ansible-playbook env/prod/playbook.yml -i env/prod/hosts -u ubuntu --private-key env/prod/IaC-Prod

ansible-dev:
	ansible-playbook env/dev/playbook.yml -i env/dev/hosts -u ubuntu --private-key env/dev/IaC-DEV