temp=$( sensors | egrep 'Core 0' | awk '{print $3}' | tr -d '+' | cut -f1 -d"." )

echo "$temp"°C