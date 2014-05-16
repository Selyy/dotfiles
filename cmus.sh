#! /bin/sh

if [ ! -x /usr/bin/cmus-remote ];
then
echo "cmus is not installed."
exit
fi

ARTIST=$( cmus-remote -Q 2>/dev/null | grep -m 1 artist | cut -d " " -f 3- )
TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- )

if [ -z "$ARTIST" ];
then
echo ""
else
echo "  $TITLE"
fi
