clear
echo "--------------"
echo "| 1 | http   |"
echo "--------------"
echo "| 2 | socks4 |"
echo "--------------"
echo "| 3 | socks5 |"
echo "--------------"
echo

read -p "Выбирай: " answer

if [ "$answer" = "1" ]
then
	echo Установка прокси http:
	wget -O httpProxy.txt https://api.proxyscrape.com/v2/?request=displayproxies&protocol=http&timeout=3500&country=all&ssl=all&anonymity=all
	echo Готово.
	echo Ваш файл с прокси называется: httpProxy.txt
elif [ "$answer" = "2" ]
then
	echo Установка прокси socks4:
	wget -O socks4Proxy.txt https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks4&timeout=3500&country=all&ssl=all&anonymity=all
	echo Готово.
	echo Ваш файл с прокси называется: socks4Proxy.txt

elif [ "$answer" = "3" ]
then
	echo Установка прокси socks5
	wget -O socks5Proxy.txt https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks5&timeout=3500&country=all&ssl=all&anonymity=all
	echo Готово.
	echo Ваш файл с прокси называется: socks5Proxy.txt 

else
    sh Proxy.sh
fi
