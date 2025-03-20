# Criar um grupo de recursos
az group create --name MeuGrupoDeRecursos --location eastus

# Criar uma rede virtual e sub-rede
az network vnet create --resource-group MeuGrupoDeRecursos --name minha-rede --address-prefix 10.0.0.0/16 --subnet-name minha-sub-rede --subnet-prefix 10.0.0.0/24

# Criar um IP público
az network public-ip create --resource-group MeuGrupoDeRecursos --name meu-ip-publico --sku Standard

# Criar um Grupo de Segurança de Rede (NSG) e regras
az network nsg create --resource-group MeuGrupoDeRecursos --name meu-nsg
az network nsg rule create --resource-group MeuGrupoDeRecursos --nsg-name meu-nsg --name permitir-ssh --priority 100 --destination-port-ranges 22 --protocol Tcp
az network nsg rule create --resource-group MeuGrupoDeRecursos --nsg-name meu-nsg --name permitir-http --priority 200 --destination-port-ranges 80 --protocol Tcp

# Criar uma interface de rede
az network nic create --resource-group MeuGrupoDeRecursos --name minha-nic --vnet-name minha-rede --subnet minha-sub-rede --public-ip-address meu-ip-publico --network-security-group meu-nsg

# Criar a VM
az vm create --resource-group MeuGrupoDeRecursos --name minha-vm --image UbuntuLTS --nics minha-nic --admin-username adminuser --admin-password SenhaSegura123!
