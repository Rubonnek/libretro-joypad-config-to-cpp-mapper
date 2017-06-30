fgrep input_device -R ./original_configs | sed 's/.* = //g' | sort | uniq -dc | sort -nr
