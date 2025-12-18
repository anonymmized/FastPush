#!/usr/bin/env bash

git add .

if git diff --cached --quiet; then
    echo "❌ No changes to commit"
    exit 0
fi

read -p "Enter Commit Message: " commit_msg

stats=$(git diff --cached --shortstat)
files_added=$(git diff --cached --name-status | grep '^A' | wc -l)
files_deleted=$(git diff --cached --name-status | grep '^D' | wc -l)
files_modified=$(git diff --cached --name-status | grep '^M' | wc -l)
size_bytes=$(git diff --cached | wc -c)

git commit -m "$commit_msg" > /dev/null 2>&1

git pull origin main > /dev/null 2>&1

start_time=$(date +%s)
git push origin main > /dev/null 2>&1
end_time=$(date +%s)

push_time=$((end_time - start_time))

echo "✅ Git Auto Commit Report"
echo "-------------------------"
echo "📝 Message: $commit_msg"
echo "📊 Changes: $stats"
echo "📁 Files: +$files_added  ~$files_modified  -$files_deleted"
echo "📦 Size: $size_bytes bytes"
echo "⏱ Push time: ${push_time}s"
echo "🚀 Status: Done"