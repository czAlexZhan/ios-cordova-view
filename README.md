<!--
 * @Author: zhanxuwen
 * @Date: 2022-04-25 16:21:30
 * @LastEditors: zhanxuwen
 * @LastEditTime: 2022-04-25 16:34:38
 * @Description: file content
-->
#### xcode 工程 Cordova使用外部链接，调试本地h5服务

1. ##### 导入项目到xcode
2. ##### 在根目录运行 `yarn or npm install`
3. ##### 配置项目
    - 点击根目录打开配置项，选择build settings 搜索`other linker flags` 增加 `-ObjC-all_load`
    - 选择 build phases 
        - dependencies 增加 CordovaLib
        - link binary With Libraries 增加 `MobileCoreServices.framework   AssetsLibrary.framework  libCordova.a`
    - 点击左上角 +，新建 new run script 命名 `copy www directory`，shell为 `NODEJS_PATH=/usr/local/bin; NVM_NODE_PATH=~/.nvm/versions/node/`nvm version 2>/dev/null`/bin; N_NODE_PATH=`find /usr/local/n/versions/node/* -maxdepth 0 -type d 2>/dev/null | tail -1`/bin; XCODE_NODE_PATH=`xcode-select --print-path`/usr/share/xcs/Node/bin; PATH=$NODEJS_PATH:$NVM_NODE_PATH:$N_NODE_PATH:$XCODE_NODE_PATH:$PATH && node cordova/lib/build.js`，取消勾选 `show environment variables in build log`
    - `cmd R`
