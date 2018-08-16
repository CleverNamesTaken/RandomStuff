#!/bin/bash
if [ $# -eq 0 ]; then
	echo '[-] Provide the name of vbs file to be echo-fied as an argument.'
	echo '[-] Usage .\script.sh <file>.'
	echo '[-] Example: .\script.sh test.vbs'
	exit 0
fi
echo '[*] The echo-fied version of the script is as follows:'
echo ''
echo ''
sed -e 's/^/echo /g; s/$/ >> script.vbs \&/g ' $1 |tr '\n' ' ' | sed 's/...$//'
echo ''
echo ''
echo "[*] This command will be saved in $1_echofied."
sed -e 's/^/echo /g; s/$/ >> script.vbs \&/g ' $1 |tr '\n' ' ' | sed 's/...$//' > $1_echofied
