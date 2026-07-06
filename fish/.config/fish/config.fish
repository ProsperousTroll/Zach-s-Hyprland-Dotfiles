# "beavosquote" command, print random Beavis & Butthead quote to terminal.
function beavosquote
    echo -e "\e[3;92m$(cat ~/zachs-dotfiles/fish/.config/fish/beavosquotes.txt | shuf -n 1)\e[23m"
end

function fish_greeting
    sleep 0.05 && fastfetch
    beavosquote
end

function lofi
	mpv --no-video 'https://www.youtube.com/watch?v=X4VbdwhkE10&pp=ygUEbG9maQ%3D%3D' &
	disown
end

if status is-interactive
    starship init fish | source
    zoxide init fish | source

    # Misc aliases
    alias neofetch='fastfetch -c neofetch'
    alias please=sudo
    alias y=yazi
    alias nv=nvim
end
