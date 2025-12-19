export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#alias shortcut keyboard
alias t="tree"
alias vim="nvim"
alias goserver="ssh bimm@10.10.10.209"
alias clean="npx mac-cleaner-cli"
alias uninstall="npx mac-cleaner-cli uninstall"

#add plugin to zshrc
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh



# --- Auto Start Tmux ---
# Kiểm tra: Nếu chưa có Tmux chạy VÀ đây là terminal tương tác (interactive)
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    # Thử attach vào session tên là "main". Nếu chưa có thì tạo mới.
    tmux attach -t main || tmux new -s main
fi
