pwd='enter your password here'
today=$(date "+%d")
tomorrow=$(date -d "+1 day" "+%d")
timer=17
condition=30

while [ "$today" -lt "$tomorrow" ]
do
    min=$(date +"%M")
    hr=$(date +"%H")
    if [[ "$hr" == "$timer" && "$min" -ge "$condition" ]]; then
        echo "$pwd" | sudo -S shutdown -r now
        break
    fi
done
