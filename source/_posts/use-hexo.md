---
title: 搭建指南
date: 2019-06-22 11:37:46
tags:
---
# 搭建篇
## 简介:
之前我是按照“CS专业那些事”的[教程](https://zhuanlan.zhihu.com/p/26625249)来写的。但是我遇到了问题，如果我想在其他电脑上编辑并部署怎么办，于是我便根据这篇[教程](https://www.zhihu.com/question/21193762/answer/79109280)重新搭建了一遍。本教程适用于仓库名不想取xxx.github.io的童鞋QWQ
## 具体步骤：
1. 创建仓库，名字任意
2. 创建两个分支：master 与 gh-pages；
![](https://raw.githubusercontent.com/Peter-Duan/picture/master/%20(2).png?token=ALRNQ2V7XORTONOTO2BIWEC5BZPV2)
3. 设置GitHub pages的显示页面
 ![](https://raw.githubusercontent.com/Peter-Duan/picture/master/20190622132928.png?token=ALRNQ2RWAK4HM2TNB2XEGXS5BZS3M)
 ![](https://raw.githubusercontent.com/Peter-Duan/picture/master/20190622132939.png?token=ALRNQ2SAJULESXKE5HU3LT25BZS4C)
4. 使用
```bash
git clone git@github.com:用户名/仓库名.git拷贝仓库；
```
5. 在本地仓库下用Git bash依次执行npm install hexo、hexo init、npm install 和 npm install hexo-deployer-git（此时当前分支应显示为gh-pages）;
6. 修改_config.yml中的deploy参数，分支应为gh-pages；(这里有个坑，冒号后面要输入空格)
7. 设置root
![](https://raw.githubusercontent.com/Peter-Duan/picture/master/20190622132624.png?token=ALRNQ2Q3USQXXBCDPNAYZP25BZSP2)
8. 依次执行git add .、git commit -m "..."、git push origin hexo提交网站相关的文件；
9. 执行hexo g -d生成网站并部署到GitHub上
10. 查看网页。xxx.github.io/仓库名
12.最后一个是语言，我安装了next主题，但是语言其实是要在hexo 的config里换并不是next主题里换。
## 至此网页搭建篇就结束了，同学们可以愉快的搭建博客并记录了。