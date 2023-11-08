#!/bin/bash
T="$(date +%s)"

echo "Starting Program."
the_path="/etc/login.defs"
 

# Editing the Max, Min, and Warn Days for Passwords
echo "Editing DAYS"
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' $the_path
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/' $the_path
sed -i 's/PASS_WARN_DAYS.*/PASS_WARN_DAYS   7/' $the_path
 

# Making sure OS logs fail and ok logins.
echo "Editing Logs"
sed -i 's/LOG_UNKFAIL_ENAB.*/LOG_UNKFAIL_ENAB   yes/' $the_path
sed -i 's/LOG_OK_LOGINS.*/LOG_OK_LOGINS   yes/' $the_path
 
# Installing/Updating Firewall
echo "Installing Firewall"
apt install ufw
ufw enable

# Updating
#apt update
#apt upgrade

# Scanning for Non-Work Related Media Files
echo "Scanning for Media Files"
users="/home"

touch "results.txt"
$file="results.txt"


find $users -f -iname '*.txt' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.webm' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mpg' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mp2' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mpeg' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mpe' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mpv' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.ogg' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mp4' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.m4p' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.m4v' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.avi' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.wmv' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mov' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.qt' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.flv' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.swf' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.avchd' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.mp3' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.aac' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.flac' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.webm' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.jpeg' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.tiff' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.bmp' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.pdf' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.png' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.gif' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.svg' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.webm' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

find $users -f -iname '*.webp' | while read line; do
    sed -i '1s/^/$line \n/' $file
done

echo "Logged to file $file, in the same directory as the script."
T="$(($(date +%s)-T))"
echo "It took ${T} seconds to run this."