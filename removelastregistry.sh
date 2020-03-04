FILEBASE="/home/luis/scripts/geradorsenha/github/alias.txt"
echo "Apagando dados do bashrc"
sed '/Gerador/,$d' ~/.bashrc > newbash.txt
cp newbash.txt ~/.bashrc
echo "Removendo ultimo registro"
sed '$d' $FILEBASE > newbash.txt
echo "Atualizando senhas no .bashrc..."
cat newbash.txt >> ~/.bashrc
echo "Carregando o .bashrc..."
echo "Digite source ~/.bashrc"
source ~/.bashrc
echo "PRONTO!"
