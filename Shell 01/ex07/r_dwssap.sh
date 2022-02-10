cat /etc/passwd | \
    grep -v '\#' | \
    sed '/^#/d' | \
    sed '1!n;d' | \
    sed -n 'n;p' | \
    sed 's/:\(.*\)//g' | \
    cut -d':' -f1 | \
    rev | \
    sort -r | \
    awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]' | \
    paste -s -d"," - | \
    sed 's/,/, /g' | \
    sed 's/\(.*\), /\1./' | \
    tr -d '\n'
