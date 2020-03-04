FILEBASE="/home/luis/scripts/geradorsenha/github/alias.txt"
echo "Apagando dados do bashrc"
sed '/Gerador/,$d' ~/.bashrc > newbash.txt
cp newbash.txt ~/.bashrc
echo "Removendo ultimo registro"
#sed '$d' $FILEBASE > newbash.txt
sed '$d' $FILEBASE > newbash.txt
cat newbash.txt > $FILEBASE
echo "Atualizando senhas no .bashrc..."
cat newbash.txt >> ~/.bashrc
rm -rf newbash.txt
echo "Carregando o .bashrc..."
echo "Digite source ~/.bashrc"
source ~/.bashrc
echo "PRONTO!"
