# --- Configuración Básica de ZSH ---

# Historial de comandos
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY

# Autocompletado básico
autoload -Uz compinit
compinit

# Colores
export CLICOLOR=1
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# --- HERRAMIENTAS MODERNAS ---

# 1. Iniciar Starship (El prompt bonito)
eval "$(starship init zsh)"

# 2. Iniciar Zoxide (El salto rápido)
eval "$(zoxide init zsh)"

# Editor por defecto
export EDITOR='nvim'
export VISUAL='nvim'

# --- TUS ALIAS ---
alias ll='ls -la'

# Alias para no escribir 'nvim' todo el tiempo (opcional)
alias v='nvim'

# Alias para VS Code (Flatpak)
alias code='flatpak run com.visualstudio.code'

# Actualia flatpak, yay y pacman
alias update="yay && flatpak update"