# --- Aliases (Atalhos Modernos) ---

# Troca o ls padrão pelo lsd com ícones
alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'

# Troca o cat padrão pelo bat (com cores)
alias cat='bat --style=plain'

# Segurança (pergunta antes de apagar/sobrescrever)
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if [[ -o interactive ]]; then
    fastfetch
fi

