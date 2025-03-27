sleep 7;
clear;

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/usr/lib/rsp/pkg/oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="rsp"
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh > /dev/null;

# Example aliases
alias @ohmybash="code ~/.oh-my-bash"
alias @netfresh="sudo systemctl restart NetworkManager"
alias @gorsproj="cd ~/Space/development/rsproj"
alias @editbashconfig="nano ~/.bashrc"
alias @editinstallerconf="nano ~/.17g/live-installer/configs/config.yaml"
alias @editfirstrunresolver="nano ~/.resolveFirstRun.js/index.mjs"

#########################################################################
## Is Production | .iso live boot for live usage or install | End-User ##
#########################################################################

if [ -f /var/.isProductionDeploy ]; then

    if [ -z "$XDG_CURRENT_DESKTOP" ]; then

      echo; echo "  → Production mode (live-iso)";
      echo "  → Initializing Desktop Session (Wayland)";

      sleep 3;

      /usr/local/bin/startrspkwin > /dev/null

    else
	clear;
        neofetch;
    fi
fi

#########################################################################
## Is Firstrun | HD/SSD Persistent boot for the first time | End-User ##
#########################################################################

if [ -f /var/.isFirstRun ]; then

    clear;

    echo; echo " → First Run Setup Wizard (post-inst)";

    sleep 3;

    sudo rsp.nodeJS ~/.resolveFirstRun.js/index.mjs

    clear

    echo; echo "  → Rebooting within 7 seconds (mandatory)"; echo

    sleep 7

    sudo touch /var/.isForRemoveRspUser

    systemctl reboot;

fi

#####
## ~/.resolveFirstRun.js/index.mjs;
## Finally...
# clear && neofetch && /usr/lib/rsp/desktop/denit;
## GO into projets dirs
## cd ~/Space/development/rsp;

