# RSP Linux - Roadmap e Melhorias  

Este documento acompanha as tarefas, melhorias e ajustes em andamento para o RSP Linux.  

## 📌 Tarefas Concluídas  

### 💻 Interface e Usabilidade  
- Atualização dos temas e personalização geral.  
- Ajustes no `qterminal` e configuração de `qterm-dropdown` na tecla `META`.  
- Ajustes nas barras para `autohide`.  
- Ícones e cursores revisados para consistência visual.  
- Ajustes no screenlock e no gerenciador de energia.  
- Melhorias no GRUB e personalização do background.  

### 🔧 Configurações do Sistema  
- Remoção de pacotes não utilizados.  
- Implementação e finalização do `rsp-workspace`.  
- Melhorias no Wi-Fi e no áudio, incluindo predefinições para `PulseEffects`.  
- Ajustes no `kcmshell6` para integração de módulos personalizados.  

### ⚙️ Instalador e Pós-Instalação  
- Ajustes no `rsp live-installer` (cursores, ícones e `.desktop`).  
- Remoção do instalador nativo após uso (`purge 17-live-installer`).  
- Wrapper `adduser` com suporte a `skel`.  

---

## 🚀 Próximas Versões  

### 🟡 **Próxima Versão (@minor)**  
- Script de pós-instalação e otimizações (`autoremove`, `live-installer`, `python3-installerdeps`).  
- Adição de comandos `$marco` e `$polo`.  
- Implementação de suporte a `WebDAV` para sincronização de conta no RSP.  
- Backup automático de redes Wi-Fi, pacotes `apt-get` e `npm`.  
- Redução e migração de scripts para `Makefile`.  
- Personalização do tema `Ambient (Graylands)`.  

### 🟢 **Versão @patch**  
- Implementação de seletor de usuário.  
- Revisão e aprimoramento da segurança.  
- Melhorias no desempenho e na integração com a nuvem.  
- Instalação padrão de `KeepassXC`.  

### 🔴 **Versão @major**  
- Melhorias no design do sistema (`Titlebar`, `LXQtPanel`, `compiz`, etc.).  
- Implementação do `zram` e ajustes no gerenciamento de energia (`tlp`).  
- Integração de `LXQtPanel` com `Labwc`.  
- Implementação de um instalador `APT` baseado em JSON para gerenciar pacotes por grupos.  
- Ferramenta para organização e restauração de janelas com `xdotool`.  
- Inclusão de `desktop-rsp-portal`, `gnetty`, `zram-tools`, entre outros.  

---

## 📂 Estrutura de Arquivos  
Os arquivos do projeto estão organizados em:  

```
rsp-fsystem/src/
 ├── etc.skel/
 ├── usr.lib/rsp/action/
 ├── usr.share/file-manager/
 ├── model/  # WebApps
 ├── themes/
 ├── scripts/
 └── configs/
```

---

Este documento será atualizado conforme novas funcionalidades forem implementadas.
