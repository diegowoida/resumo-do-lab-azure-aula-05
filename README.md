Criar uma Máquina Virtual (VM) e configurar uma rede no Microsoft Azure é um processo simples que pode ser feito por meio do Azure Portal, Azure CLI ou PowerShell. Vou guiar você passo a passo para criar uma VM e configurar a rede usando o Azure Portal.

# 
# Passo a Passo para Criar uma VM e Configurar a Rede no Azure
## 1. Acesse o Azure Portal
- Acesse o [Portal do Azure](https://portal.azure.com/).
- Faça login com sua conta Azure.

## 2. Criar uma Máquina Virtual
- No painel esquerdo, clique em "**Criar um recurso**".
- Na barra de pesquisa, digite "**Máquina Virtual**" e selecione a opção correspondente.
- Clique em "**Criar**".

## 3. Configurar a VM
### Detalhes do Projeto:
- **Assinatura**: Selecione a assinatura que deseja usar.
- **Grupo de Recursos**: Crie um novo grupo de recursos ou selecione um existente.
## 
### Detalhes da Instância:
   - **Nome da Máquina Virtual**: Insira um nome para a VM (ex: minha-vm).
- **Região**: Escolha a região onde a VM será hospedada.
 - **Opções de Disponibilidade**: Escolha entre "Nenhuma", "Conjunto de Disponibilidade" ou "Zona de Disponibilidade".
- **Imagem**: Selecione o sistema operacional (ex: Windows Server, Ubuntu, etc.).
- **Tamanho**: Escolha o tamanho da VM com base nas necessidades de CPU, memória e armazenamento.

### Conta de Administrador:

- **Nome de Usuário**: Defina um nome de usuário para acessar a VM.
- **Senha**: Defina uma senha segura.

### Regras de Porta de Entrada:

- **Portas de Entrada**: Escolha quais portas serão abertas (ex: HTTP - 80, RDP - 3389 para Windows, SSH - 22 para Linux).

## 4. Configurar a Rede
### Rede Virtual:
- Crie uma nova rede virtual ou selecione uma existente.
- Defina o nome da rede virtual (ex: minha-rede).
- Configure o espaço de endereçamento (ex: 10.0.0.0/16).

### Sub-rede:
- Crie uma nova sub-rede ou use a padrão.
- Defina o intervalo de endereços da sub-rede (ex: 10.0.0.0/24).

### IP Público:
- Crie um novo IP público para acessar a VM pela internet.

### Grupo de Segurança de Rede (NSG):
- Crie um NSG para definir regras de segurança (ex: permitir tráfego HTTP, RDP ou SSH).

## 5. Revisar e Criar
- Revise todas as configurações.
- Clique em "**Criar**" para iniciar a implantação da VM.

## 6. Conectar à VM
Após a criação da VM, acesse o recurso no Azure Portal.

### Para conectar:

- **Windows**: Use o protocolo RDP (Remote Desktop Protocol) com o IP público da VM.
- **Linux**: Use o protocolo SSH com o IP público da VM.
