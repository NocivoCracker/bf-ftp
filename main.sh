preto="\033[1;33;30m"
vermelho="\033[1;33;31m"
amarelo="\033[1;33;33m"
verde="\033[1;33;32m"
cyan="\033[1;33;36m"
branco="\033[1;33;37m"

clear


echo "$amarelo======================================================"
echo "$cyan"'( (    /|(  ___  )(  ____ \\\__   __/|\     /|(  ___  )'
echo "|  \  ( || (   ) || (    \/   ) (   | )   ( || (   ) |"
echo "|   \ | || |   | || |         | |   | |   | || |   | |"
echo "| (\ \) || |   | || |         | |   ( (   ) )| |   | |"
echo "| | \   || |   | || |         | |    \ \_/ / | |   | |"
echo "| )  \  || (___) || (____/\___) (___  \   /  | (___) |"
echo "|/    )_)(_______)(_______/\_______/   \_/   (_______)"
echo "$amarelo======================================================"

echo "\n"
echo "$verde"

echo "SERVIDOR:"
read -p "Digite o HOST: " host
read -p "Digite a Porta: " porta
read -p "Digite o Usuário: " user
echo "$branco \nPALAVRAS:"
read -p "Mínimo de caracteres: " min
read -p "Máximo de caracteres: " max
read -p "Caracteres que serão usados: " chars

echo "\n\n$verdeInicializando..."

crunch $min $max $chars | ruby main.rb $host $porta $user
