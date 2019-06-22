---
title: 安装Hexo
date: 2019-06-21 23:46:50
tags:
---
# 安装篇
![Github+Hexo](https://pic2.zhimg.com/v2-d4c1239e75c02e8482c22017a6c8d407_1200x500.jpg)
## 简介：
那啥多的我也不多说了，相关知识自行谷歌。此文章参考自知乎大佬"CS专业那些事"的[文章](https://zhuanlan.zhihu.com/p/26625249)
## 准备：
1. 注册GitHub账号[全球最大同性交友网站](https://www.github.com)，至于怎么详细的用，我会另起博客。
2. 安装[git](https://git-scm.com/download/)至于Git是啥我会另起一篇文章
## 具体步骤：
1.  ### 安装成功后，将你的Git与GitHub帐号绑定
    
    鼠标右击打开Git Bash.
    设置user.name和user.email配置信息：
    ```bash 
    git config --global user.name "你的GitHub用户名(去掉引号)"
    git config --global user.email "你的GitHub注册邮箱(去掉引号)"
    ```
    生成ssh密钥文件：
    ``` bash
    ssh-keygen -t rsa -C "你的GitHub注册邮箱(去掉引号)" 
    ```
    然后直接三个回车即可，默认不需要设置密码
    然后找到生成的.ssh的文件夹中的id_rsa.pub密钥(一般在用户文件夹里)，将内容全部复制(用notepad++即可)
    
    打开[GitHub_Settings_keys](https://github.com/settings/keys) 页面，新建new SSH Key. Title随便填，把复制到公钥粘贴进去。然后Add SSH Key.
    
    在Git Bash中检测GitHub公钥设置是否成功，输入 ssh git@github.com 
    ![](https://pic3.zhimg.com/80/v2-da481ffa686410becd4186c656b4ebd6_hd.jpg)
    如上则说明成功。这里之所以设置GitHub密钥原因是，通过非对称加密的公钥与私钥来完成加密，公钥放置在GitHub上，私钥放置在自己的电脑里。GitHub要求每次推送代码都是合法用户，所以每次推送都需要输入账号密码验证推送用户是否是合法用户，为了省去每次输入密码的步骤，采用了ssh，当你推送的时候，git就会匹配你的私钥跟GitHub上面的公钥是否是配对的，若是匹配就认为你是合法用户，则允许推送。这样可以保证每次的推送都是正确合法的。

2. ### 安装node.js
    Hexo基于Node.js，Node.js下载地址：[Download | Node.js](https://nodejs.org/en/download/) 下载安装包，注意安装Node.js会包含环境变量及npm的安装，安装后，检测Node.js是否安装成功，在命令行中输入 node -v 有数字说明成功了。QWQ

3. ### 安装hexo
    Hexo就是我们的个人博客网站的框架， 这里需要自己在电脑常里创建一个文件夹，可以命名为Blog，Hexo框架与以后你自己发布的网页都在这个文件夹中。创建好后，进入文件夹中，按住shift键，右击鼠标点击命令行(这里有个坑，如果是powershell的话详见[传送门]())

    使用npm命令安装Hexo，输入：
    ```bash
    npm install -g hexo-cli 
    ```
    注意，这里的命令都是作用在刚刚创建的Blog文件夹中。

## 至此，我们就安装完了具体使用的话详见下篇博客。