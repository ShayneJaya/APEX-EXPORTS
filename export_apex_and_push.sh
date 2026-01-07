#!/usr/bin/env bash
set -e
TNS_ADMIN_DIR="/Users/spjayawa/Desktop/Keys/ATP_SHAYNE_26ai/Wallet_UA8JGHJLGLMFFG85"
TNS_ALIAS="ua8jghjlglmffg85_low"
EXPORT_ROOT="."
BRANCH="main"

# ---- CONFIG ----
APP_ID="$1"
BRANCH="main"
APP_FOLDER="$EXPORT_ROOT/f$APP_ID"
if [ -z "$APP_ID" ]; then
  echo "Usage: $0 <APP_ID>"
  exit 1
fi


echo "▶ Enter database credentials"
read -p "DB Username (e.g. ADMIN): " DB_USER
read -s -p "DB Password: " DB_PASS
echo

# ------------------------------
# SPLIT EXPORT
# ------------------------------
echo "▶ Exporting split APEX app $APP_ID..."

sql -s "$DB_USER/$DB_PASS@$TNS_ALIAS" <<EOF
apex export \
  -applicationid $APP_ID \
  -split \
  -skipExportDate 
exit
EOF

echo "▶ Exporting full single-file application..."



sql -s "$DB_USER/$DB_PASS@$TNS_ALIAS" <<EOF
cd f$APP_ID
apex export \
  -applicationid $APP_ID \
  -skipExportDate  

exit
EOF


echo "✔ Export complete"
# ==============================
# OPTIONAL: UPDATE LATEST POINTER
# ==============================

echo
echo "▶ Git status:"
git status --short

if git diff --quiet; then
  echo
  echo "ℹ No changes detected. Nothing to commit."
  exit 0
fi

echo
echo "▶ Git diff summary:"
git diff --stat

echo
echo "▶ Review full diff? (y/n)"
read -r REVIEW
if [[ "$REVIEW" =~ ^[Yy]$ ]]; then
  git diff
fi

echo
echo "▶ Enter commit message:"
read -r COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
  echo "✖ Commit message cannot be empty"
  exit 1
fi

git add .
git commit -m "$COMMIT_MSG"
git push origin "$BRANCH"

echo
echo "🚀 Export + commit + push complete"
