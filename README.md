OK - mudar titulos de processo firstRun
OK - ajeita iinput methods .desktop ainda em settings
INDO - mudar so as logos de lxqt p rsp

ATUALIZA SKELLLLL....

EPRIONTO!

11 - Pendrive(CD-ROM) @rsp 71

                              ~ Mínima Usabilidade  

          OK - + Muda tema osh
          OK - 55 por enquanto usar o rspctl como está (e terminar implementação)
          OK - 2. remove oq n tiver sendo usado (pacotes)
          OK - 100. terminar rsp-workspace + alinhar/terminar projs subjacentes
          OK - Trimar e renomear os temas para dos a costomizacao geral na next minor
          OK - 1. qterm padrao
          OK - passar para padrao os .desktops de rsp-config center para RSp Settings
          OK - 3  deixar barras autohide (por neuqnato depos vai ajeitar na integracao do rx.xml)
          OK - qterm-dropdown na key META
          OK - 444 voltar switcher mas sem quadrado
          OK - 5. - Desabilitar coredump
          OK - 6. Ajeitar O MINIMO DA librspls 
          OK - 7. Voltar cursor breeze white
          OK - 5.  Usr share osh 
          OK - 9 Tuidm
          OK > ~/Space/development/rsp/rsp-fsystem/src/etc.skel
          OK - criar o adduser wrapper + TESTAR com merge de skel
          OK - Background de screenlock
          OK - Serviço de screenlock
          OK - Power manager
          OK - mudar bg da grub live
          
          ##__________________________________________________________##

          OK - ajeitar o cursor de rsp live-installer
          OK - ajeitar icones de rsp live-installer
          OK - trust installer .desktop rsp live-installer
          OK - ajeitar os modulos kcmshell6 nos scripts 

          ##__________________________________________________________##

          OK - remover atalho de blueman do painel de config do lxqt
          OK - corrigir o skel atual
          ok - MUDAR OU RETIRAR a parte do post install nativo (purge 17-live-installer)
          OK - remover ~/.installer
          OK - configs de melhorar wifi
          OK - configs de melhorar audio
          OK - pulseeffects presets na usr shared < skel .config apontando
          OK - fixar module de keybinds no kcmshell6
          OK - pulseeffects nativo

  <todo-list>

        - Rsp-config-nm-spplet > nm-applet
        - cli de run rsp scripts quaker canto
        - por indexação de opções 
        - compilar adição de enteadas nas listas do README 
        - cli de criação de entradas de ação de files e dirs de click pcmanfmqt

  </todo-list>

  <next-version @minor>
  
  - script post_install 
          ,autoremove 
          ,live-installer, 
          ,python3-installerdeps  
    
  - comando $marco
  - comando $polo

  - endpoint shttps
    - resgata as sshk mestre por curl basisc https
      - entra na /home/U local
      - o resto via SCP...

    - ENTRADAS DE acacao no pcmanfm-qt terminar em: 
        - rsp-fsystem/src/usr.lib/rsp/action/
        - rsp-fsystem/src/usr.share/file-manager/

    - usar warp inves de dnsproxy
    - script de backup de user-defined system networks
    - script de backup de user-installed apt-get packages
    - script de backp up user-installed npm packages
    - instalacao padrao de nextcloud ou algo similar
    - bota @denit NO ALIASES
    - winskip mouskeybind de top left
    - Webdav; Usar para futura funcionalidade de sincronia de conta no rsp tipo big cloud
    - Diminuir quantidade de Scripts em arquivos do projeto 
    - migrar os menores para bloco de Makefile
    - Script backup de usuário íntegro portável e descentralizado do Android via adb
    - botar margem na maximizacoa de todas as janelas para que funcione o xdotool no corner mouse
    - /ect/environment proxies
    - Terminar customização paleta gray no tema Ambient (gRAYLANDS padrão)
    - Terminar launcher de webapp e por em Space/model/ + por pra syste-mwide geral
    - rsp-libjavascript - integracao com wrappers de /bins em .js programatico
    - Integrar a lxqtpsnel com a spi XML do Labwc
    - Setup da sddmá
    - Tela sddm logo superior direita 
    - O plymuth maldito
    - Atualização de skel
    - DEFINICAO de MODO de rspctl services on login
    - Mete os .qss nos temas diretamente conforme o padrão de scaffolding 

  </next-version>
  
  <next-version @patch>

    - implementar user selector
    - iniciar rev Secutiry (após rev Desktop standard)
    - iniciar rev Cloudable (após rev Secutiry)
    - iniciar rev Performance (após rev Cloudable)
    - instalacao padrao de keepassxc

  </next-version>

  <next-version @major>
    
    Many cool things.

  </next-version>

  <quest-log>

    * Titlebsr mais escuro adesiva dsrk compify
    * negtty 
    * Bg painel bottom
    * Bg painel menu button float 
    * Compila lxqtsudo
    * Compila lxqtsddmmsnsger
    * Mod startrspcompify
    * Setup tlp
    * Setup zram
    * Phsiphon no Pc service
    * Bota perfil Max na efi confgis de powr 
    * Muda ícone do .config app Dir lsuncher deixar redondo 
    * Gradiente no background padrão tels preta 
    * logo meio gradiente escuro de cima pra baixo 
    * Tela grub, bota o logo lá em baixo discreto
    * Diminuir os timeouts
    * Aposentar alacritty lixo

  <quest-log>

  <archive>

      - deixa tater nobljuetooth so > controle de audio > pc > cel >som
      - luz de fundo no bg padrao desktop
      
      - por os servicos de desktop no pm2 para melhor estabilidade usando regras de 
          - watch e autorestarting e priorizacao de processamento

      - terminar organizacao do scaffoling dos subprojetos clonados
          - fazer uma CLI boilerplater para ele ?
          - comandos nos scripts da pasta ROOT do projeto para essas coisas
      
      - GO FAZENDO A script/apt-get.sh
      - meter uma tuidm logo  nessa merda e acabar com isso

      - build a lxqt-panel da forma certa pra rodar com adapcao nativa do 
          - labwc/compify https://labwc.github.io/integration.    
          - html#lxqt-panel > para barra de tray e atalhos e status uteis

      - fazer um toool de instrucao de instalacoes APT
          - em json, separada por grupos
          - a CLI desse toool deve ter subcomando add <package_name> <group> e edit
          - de auxilixar uma CLI paralela q faca audit desses modulos
              para que nao se desistale automaticamente, restaurar
              - ...e tb que instale os servicos desses pacotes instalados

      - mais funcoes nativas de winmanager
          - tipo usar o xdotool para integragar no winskip  
          -  fazer or exemplo um recurso de posicionar todas as janelas em Cascade
              e gravar as posicoes anteriores para restaurar opcional

      - ASSETS NO DIST
          - .desktop de DM
          - Temas openbox
          - Temas cursor
          - Temas de ícone
          - configs de skippy
          - setar o build deles no rsp-filesystem
          
      - nao esquecer de 
      - nmudar tema da osh
      - vota neofetch
      - aoos padrao 
      - .deb dos builds
      - instala o desktop-rsp-portal
      - script setup o gnetty
      - zramtools na apt-get
      - "n" na apt-get esquece nsolid
  
  </archive>