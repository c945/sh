#!/bin/bash

### set variable to heredocument
DOC=`cat <<'EOF'
"Wild Card and SAN's CSR"
DN: CN = *.example.com

Comment: not using $HOME variable.
EOF
`

### one line output
echo $DOC

### multi line output
echo "$DOC"

### bash version 4 later.

mapfile str <<'EOF'
"Wild Card and SAN's CSR"
DN: CN = *.example.com

Comment: not using $HOME variable.
EOF

### one line output
echo ${str[@]}

### multi line output
echo "${str[@]}"
