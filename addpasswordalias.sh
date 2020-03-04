FILEBASE="/home/luis/scripts/geradorsenha/github/alias.txt"
echo "### Você pode adicionar um alias diretamente no arquivo alias.txt"
echo "### LOGINs padroes segundo alias.txt"
grep "#Variaveisgeradorsenha" -A 8 ~/.bashrc
read -p "Informa a URL: " URL
read -p "Login: " LOGIN
read -p "Tamanho: " TAMANHO
read -p "Area: " AREA
read -p "Nome: gerarSenha" NOME
GERAR="gerarSenha -d $URL -l $LOGIN -t $TAMANHO -s $AREA"
echo "Inserindo em: $FILEBASE ..."
echo "alias gerarSenha$NOME=\"$GERAR\"" >> $FILEBASE
echo "Apagando dados do bashrc"
sed '/Gerador/,$d' ~/.bashrc > newbash.txt
cp newbash.txt ~/.bashrc
rm -rf newbash.txt
echo "Inserindo senhas no .bashrc..."
cat $FILEBASE >> ~/.bashrc
echo "Carregando o .bashrc..."
echo "Digite source ~/.bashrc"
source ~/.bashrc
echo "PRONTO!"
