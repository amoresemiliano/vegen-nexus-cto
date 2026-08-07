#!/usr/bin/env bash
set -e
git init
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/amoresemiliano/nexus-dev-os.git
git add .
git commit -m "chore: bootstrap Vegen Nexus Dev OS v1.0.0"
git push -u origin main
