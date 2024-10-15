#
# Key bindings
#
# (c) 2017 wmr <wmr101@gmail.com>
#

# vi mode
bindkey -v

# Enable emacs shortcuts in vi mode
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^W" backward-kill-word
bindkey "^H" backward-delete-char
bindkey "^U" kill-word
bindkey "^K" kill-line
bindkey "^?" backward-delete-char

# Home/End keys
bindkey -M vicmd "^[[H" vi-beginning-of-line
bindkey -M vicmd "^[[F" vi-end-of-line
bindkey -M vicmd "^[[3~" vi-delete-char

bindkey -M viins "^[[H" vi-beginning-of-line
bindkey -M viins "^[[F" vi-end-of-line
bindkey -M viins "^[^[[D" vi-backward-word
bindkey -M viins "^[^[[C" vi-forward-word
bindkey -M viins "^[[3~" vi-delete-char

# History substring search
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
