cd /tmp
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install -y ./code.deb
rm code.deb
cd -

mkdir -p ~/.config/Code/User
cp ~/.local/share/lincoln/configs/vscode.json ~/.config/Code/User/settings.json

extensions=(
    "github.copilot"
    "eamodio.gitlens"
    "ms-python.python"
    "ms-python.black-formatter"
    "ms-python.vscode-pylance"
    "esbenp.prettier-vscode"
    "dbaeumer.vscode-eslint"
    "ms-azuretools.vscode-docker"
    "hashicorp.terraform"
    "golang.go"
)

for extension in "${extensions[@]}"; do
    echo "Installing $extension..."
    code --install-extension $extension
done

echo "All extensions installed!"
