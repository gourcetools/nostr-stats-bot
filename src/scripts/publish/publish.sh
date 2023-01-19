
cd ../../../config
relay=$(cat relay.txt)
privkey=$(cat privkey.txt)

cd ../src


cd data
COUNT=$(cat relays-count)
cd ..
echo "Total relays:	$COUNT"


echo "==============================================================================	"
echo "     RELAY:	""$relay"" 							"
echo "============================================================================== 	"
echo " "

nostr-tool -p "$privkey" -d 10 -r "$relay" text-note -c "  | 📡 Nostr public relays: "$COUNT" 🛰️  | "	

echo "==============================================================================	"
echo "     Published | 📡 Nostr public relays: "$COUNT" 🛰️ | to: $relay 							"
echo "============================================================================== 	"
echo " "


for i in {600..1}
do
	echo "Publishing relays count in $i seconds"
	sleep 1
done
echo "Lets publish!"


rm -f ./data/jpy
ls
