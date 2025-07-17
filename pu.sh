#!/bin/bash
# shellcheck shell=bash

# Cek apakah direktori adalah repository git
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Error: Bukan repository git"
    exit 1
fi

# Update repository
if ! git pull --all; then
    echo "Error: Gagal melakukan git pull"
    exit 1
fi

# Add semua perubahan
if ! git add --all; then
    echo "Error: Gagal melakukan git add"
    exit 1
fi

# Commit dengan timestamp
if ! git commit -m "$(date +'%A %d %B %Y %H:%M:%S %Z %z')"; then
    echo "Error: Gagal melakukan git commit"
    exit 1
fi

# Push ke remote
if ! git push -u origin main; then
    echo "Error: Gagal melakukan git push"
    exit 1
fi
