# Copy neovim configuration
robocopy ../.config/nvim/ $HOME\AppData\Local\nvim\ /e

# Copy wt configuration
robocopy windows/ $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\ settings.json

# Copy lf configuration
robocopy windows/lf/ $HOME\AppData\Local\lf\
