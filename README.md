# Terraform Aws Infrastructure

## Introduction

Ce projet montre comment déployer une infrastructure sur AWS avec Terraform. Il déploie une instance EC2, installe Docker, et déploie une application Docker à partir d'un dépôt GitHub.

### Prérequis

- **Terraform** : Pour gérer l'infrastructure.
- **Compte AWS** : Créez un compte AWS et obtenez les clés d'accès.
- **Clé SSH** : Créez une paire de clés pour accéder à l'instance EC2.

### Fichiers

- `main.tf`: Fichier principal de configuration Terraform.
- `variables.tf`: Définition des variables Terraform.
- `terraform.tfvars`: Fichier de variables Terraform.
- `outputs.tf`: Définition des sorties Terraform.
- `providers.tf`: Configuration du fournisseur AWS.
- `modules/ec2/main.tf`: Configuration de l'instance EC2.

## Configuration

1. **Installer les Outils**  
   Téléchargez et installez les outils suivants :

   - [Terraform](https://www.terraform.io/downloads.html)
   - [AWS CLI](https://aws.amazon.com/cli/)

2. **Configurer AWS CLI**  
   Exécutez `aws configure` et entrez vos clés d'accès AWS.

3. **Créer une Paire de Clés SSH**  
   Exécutez `ssh-keygen -t rsa -b 4096 -f mykey` pour créer une paire de clés SSH.

4. **Clonez le Dépôt**
   ```bash
   git clone git@github.com:Choetsu/terraform-aws-infrastructure.git
   cd terraform-aws-infrastructure
   ```
5. **Configurer les Variables Terraform**  
   Modifiez `terraform.tfvars` à la racine du projet pour définir vos propres valeurs.

   - `aws_region`: Région AWS à utiliser.
   - `security_group_name`: Nom du groupe de sécurité.

   Modifiez `modules/ec2/terraform.tfvars` pour définir vos propres valeurs.

   - `instance_type`: Type d'instance EC2 (ex: `t2.micro`).
   - `ami_id`: ID de l'image AMI à utiliser.
   - `key_name`: Nom de la clé SSH à utiliser.
   - `private_key_path`: Chemin vers le fichier de clé privée SSH.

## Utilisation

- Initialisez Terraform : `terraform init`
- Vérifiez la configuration : `terraform validate`
- Créez un plan : `terraform plan`
- Appliquez les changements : `terraform apply`
- Affichez les sorties : `terraform output`
- Visitez l'URL de l'instance EC2 pour voir l'application en cours d'exécution via l'url fournie par les sorties.

## Nettoyage

Pour détruire l'infrastructure, exécutez `terraform destroy`.

## Ressources

- [Terraform](https://www.terraform.io/)
- [Documentation AWS](https://docs.aws.amazon.com/)
