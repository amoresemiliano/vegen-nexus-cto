$ErrorActionPreference = "Stop"
git init
git branch -M main
git remote remove origin 2>$null
git remote add origin https://github.com/amoresemiliano/nexus-dev-os.git
git add .
git commit -m "chore: bootstrap Vegen Nexus Dev OS v1.0.0"
git push -u origin main
