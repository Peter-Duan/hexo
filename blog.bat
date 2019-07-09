@echo off
D:
cd D:\HexoBlog\hexo
echo Cleaning cache...
hexo clean&&echo creating htmls and deploying...&&hexo g -d
