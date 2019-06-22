@echo off
D:
cd D:\HexoBlog\hexo
echo 正在清理缓存...
hexo clean&&echo 正在生成网页并部署...&&hexo g -d&&pause
