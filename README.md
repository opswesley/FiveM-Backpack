# 🎒 FiveM-Backpack
A FiveM script that allows admins to expand player inventory capacity with the `/backpack` command. Logs all changes to Discord for better administration.

## 📖 Overview
**Backpack** is a FiveM script that enables administrators to expand a player's inventory using a simple command. Built with Lua and integrated with the **vRP framework**, it logs all changes to a Discord webhook for monitoring.

## ✨ Features
- ✅ **Custom Inventory Expansion**: Adjust inventory with `/backpack [ID] [Amount]` (e.g., `/backpack 4 100`).
- ✅ **Admin-Only Access**: Restricted to users with the `"Admin"` group in vRP.
- ✅ **Discord Webhook Logging**: Tracks all modifications, including staff details, player ID, new capacity, and timestamp.
- ✅ **Player Notification**: The affected player receives an in-game message about their updated inventory size.
- ✅ **Open Source**: Free to use and modify.

## ⚙️ Prerequisites
- A FiveM server running GTA V.
- **vRP Framework** installed and configured.
- A **Discord Webhook URL** for logging.
- Basic knowledge of FiveM resource installation.

## 📥 Installation & Usage
1. Clone or download this repository.
2. Copy the folder to your FiveM server's `resources` directory.
3. Add `ensure backpack` to your `server.cfg`.
4. Configure the Webhook:
   - Edit `server.lua` and replace `local webhookURL = ""` with your Discord webhook URL.
5. Restart your server or use `refresh` followed by `start backpack`.

## 💡 How to Use
- Run `/backpack [ID] [Amount]` (e.g., `/backpack 4 100`) to increase the player's inventory capacity.
- The targeted player receives a notification.
- The action is logged in the Discord webhook.

## 🛠️ Dependencies
- **vRP Framework**: Required for player identity, permissions, and inventory management (`@vrp/lib/utils.lua`).

## ⚠️ Important Notes
- **Webhook Configuration**: You must provide a valid Discord webhook URL in `server.lua`.
- **Creative V5 Compatibility**: Tested only on **Creative V5**. Route configuration might be required for proper inventory management.
- **Loss on Death**: If a player dies or gives up, the expansion is lost (not implemented in this version; requires custom logic).
- **Project Status**: This is part of a stalled project and is being shared in its current state.
  
## 📝 License
Distributed under the **MIT License**. See the `LICENSE` file for details.
  
---

## 🇧🇷 Documentação em Português
### 📖 Visão Geral
**Backpack** é um script para FiveM que permite aos administradores expandirem a capacidade do inventário dos jogadores através do comando `/backpack`. Ele é desenvolvido em **Lua** e integrado ao **framework vRP**, registrando todas as modificações em um webhook do **Discord**.

### ✨ Funcionalidades
- ✅ **Expansão de Inventário Personalizada**: Ajuste o inventário com `/backpack [ID] [Quantidade]` (ex.: `/backpack 4 100`).
- ✅ **Acesso Restrito a Administradores**: Apenas para usuários do grupo `"Admin"` no vRP.
- ✅ **Registro em Webhook do Discord**: Registra todas as alterações, incluindo ID do jogador, administrador responsável, nova capacidade e horário.
- ✅ **Notificação ao Jogador**: O jogador recebe um aviso in-game sobre a nova capacidade.
- ✅ **Código Aberto**: Livre para uso e modificação.

### ⚙️ Pré-requisitos
- Um servidor **FiveM** rodando **GTA V**.
- **Framework vRP** instalado e configurado.
- Uma **URL de webhook do Discord** para os logs.
- Conhecimento básico de instalação de recursos no FiveM.

### 📥 Instalação & Uso
1. Clone ou baixe este repositório.
2. Copie a pasta para o diretório `resources` do seu servidor FiveM.
3. Adicione `ensure backpack` ao seu `server.cfg`.
4. Configure o Webhook:
   - Edite `server.lua` e substitua `local webhookURL = ""` pela URL do seu webhook no Discord.
5. Reinicie o servidor ou use `refresh` seguido de `start backpack`.

### 💡 Como Usar
- Execute `/backpack [ID] [Quantidade]` (ex.: `/backpack 4 100`) para aumentar o inventário de um jogador.
- O jogador recebe uma notificação.
- A ação é registrada no webhook do Discord.

### 🛠️ Dependências
- **Framework vRP**: Necessário para identidade dos jogadores, permissões e gerenciamento de inventário (`@vrp/lib/utils.lua`).

### ⚠️ Notas Importantes
- **Configuração do Webhook**: É necessário fornecer uma URL válida do Discord em `server.lua`.
- **Compatibilidade com Creative V5**: Testado apenas no **Creative V5**. Pode ser necessário configurar rotas para conexão correta ao banco de dados.
- **Perda ao Morrer**: Se o jogador morrer ou desistir, a expansão será perdida (não implementado nesta versão; requer lógica personalizada).
- **Status do Projeto**: Este é um projeto pausado e está sendo disponibilizado no estado atual.

### 📝 Licença
Distribuído sob a **Licença MIT**. Consulte o arquivo `LICENSE` para mais detalhes.
