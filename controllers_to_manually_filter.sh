fgrep input_device -R ./retroarch-joypad-autoconfig/udev | sed 's/.* = //g' | sort | uniq -dc | sort -nr
