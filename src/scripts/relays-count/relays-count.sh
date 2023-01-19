curl -s https://raw.githubusercontent.com/dskvr/nostr-watch/develop/relays.yaml > tmprelays.txt

count=$(cat tmprelays.txt | wc -l )
((count-=1))

echo "$count" > relays-count
rm -f tmprelays.txt