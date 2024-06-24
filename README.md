```bash
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null

echo "Cloning stable lincoln"
git clone https://github.com/frankiannelli/lincoln.git ~/.local/share/lincoln > /dev/null

source ~/.local/share/lincoln/install.sh
```