#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build:prod

# 进入生成的构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你要部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:DarksoulsVII/coalTestingApp.git master:gh-pages


cd -
