#!/bin/sh
BASE_NAME="$(jq '.id' ccmod.json | sed 's/^"//;s/"$//')"
NAME="${BASE_NAME}.ccmod"
rm -rf "$BASE_NAME"*
zip -r "$NAME" ./ -x "*.ccmod" "*.zip" "node_modules/*" ".git*" "*.ts" "*.md" \
    "tsconfig.json" "*.sh" "package-lock.json" "pack/*" "bundle.zip" ".prettierrc.json" \
    "*.kra" "*.kra~" "*.png~" "src/*"
