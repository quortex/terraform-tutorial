# Formation Terraform

## 01 Création d’une ressource et commandes de base, notion de state

Structure basique de terraform avec un `main.tf`: configuration de terraform et du provider, et déclaration d’une ressource.

Commandes terraform simples: `terraform init`, `terraform plan`, `terraform apply`, `terraform destroy`.

Observation du state dans le dossier local (pas de backend distant de défini). Inexistant au début. Après `init`: contient `.terraform` avec les plugins. Après `plan`: inexistant (pas de changement). Après `apply`: contient le `terraform.state` avec la liste des ressources.

Evocation des backends distants et des workspaces.

## 02 Dépendances entre ressources, manipulation du state

Notions d’arguments d’entrée et d’attributs de sortie des ressources.

Commandes terraform plus poussées pour observer le state: `terraform show`, `terraform state list`, `terraform state show <rs>`.

Suppression d’une ressource AWS et observation du `terraform plan` (re-création de la ressource). Observation du `terraform state list`: ressource toujours présente dans le state bien qu’inexistante dans AWS. Utilisation de `terraform refresh` pour mettre à jour le state. Notion de refresh interne présent dans le terraform plan.

Utilisation de `terraform state rm <rs>` si besoin de forcer l’oubli d’une ressource.

## 03 Variables d’entrée et de sortie

Déclaration de variables d’entrée dans `variables.tf` et définition des variables dans `*.tfvars`.

Passage d’un fichier de variables à la commande `terraform plan/apply/destroy/…` via `-var-file` ou définition directe via `-var`.

Déclaration de variables de sortie.

Utilisation de `terraform output` pour visualiser les valeurs des variables de sortie.

## 04 Modules

Définition d’un module en local. Utilisation du module dans le `main.tf`, définition des arguments de ce module et utilisation des attributs de sortie de ce module.

Utilisation de modules publics du registry Terraform plutôt que locaux.
