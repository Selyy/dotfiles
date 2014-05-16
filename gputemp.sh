temp=$( nvidia-settings -q gpucoretemp -t | head -n 1 )

echo "$temp"°C
