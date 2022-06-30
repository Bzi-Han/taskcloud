# Taskcloud

### 介绍

云任务是一套定时任务处理程序，用户通过与前端交互添加需要执行的任务到指定的任务包中，并设定任务包的激活状态与定时启动时间(可设定是否只运行一次或每天都运行)。除了用户手动投递的任务包外，系统会在第一次启动时与每天`00:00`时自动分发当天需要执行的任务。

任务执行所用的脚本可以是`Lua` `Python` `Javascript`这三种语言编写的代码，可以使用语言自带的各种工具函数和此程序导出的[API](https://github.com/Bzi-Han/taskcloud/blob/main/docs/APIDocumentaion.md)接口来进行编程，任务执行的结果与执行过程中的各种日志与报错日志均可在前端控制台中看到，可作为脚本执行问题的参考数据。

若是任务的开发者还可以在帮助中心发布帮助文档，以更好地帮助用户使用。

### 架构

此项目分为三个子项目

+ `前端` [taskcloud_web](https://github.com/Bzi-Han/taskcloud_web)
+ `后端` [taskcloud_backend](https://github.com/Bzi-Han/taskcloud_backend)
+ `核心` [taskcloud_core](https://github.com/Bzi-Han/taskcloud_core)

核心除了可以提供服务外还有一个用于本地开发调试的程序`local`，可以使用`--help`命令查看其用法。

其中后端与核心使用的通信协议为TCP，详细请看[核心协议](https://github.com/Bzi-Han/taskcloud/blob/main/docs/CoreServiceProtocol.md)。

整个项目的架构图

![项目架构图](https://github.com/Bzi-Han/taskcloud/blob/main/images/%E4%BA%91%E4%BB%BB%E5%8A%A1%E6%9E%B6%E6%9E%84.jpg)

数据库的结构图

![数据库结构图](https://github.com/Bzi-Han/taskcloud/blob/main/images/%E4%BA%91%E4%BB%BB%E5%8A%A1.png)

### 配置

**前端**

`taskcloud_web\src\config\network.js`第132行设置全局后端接口地址

`taskcloud_web\src\config\crypto.js`设置加解密密钥

**后端**

`taskcloud_backend\src\main\resources\application.yml`设置全局配置

**核心**

`taskcloud_core\src\common\global.cc`设置服务配置

### 编译

**前端**

0. 确保在子项目根目录打开命令行终端
1. 执行`yarn run build`

编译后的文件会在子项目根目录的`dist`文件夹中

**后端**

0. 确保在子项目根目录打开命令行终端
1. 执行`./mvnw clean package -D maven.test.skip`

编译后的文件会在子项目根目录的`target`文件夹中

**核心**

0. 确保在子项目根目录打开命令行终端
1. 执行`git submodule init`
2. 执行`git submodule update`
3. 执行`cmake -S . -B build -A x64`，其中`x64`应替换为自己的平台的类型
4. 执行`cmake --build build --config Release --target ALL_BUILD -j 38`，其中`-j 38`的38为同时编译线程数，应替换为编译平台的CPU的超线程数+2

编译后的文件会在子项目根目录的`build/Release`文件夹中

### 部署

1. 根据[数据库结构](https://github.com/Bzi-Han/taskcloud/blob/main/datas/taskcloud.sql)在MySQL中建立数据库。
2. 运行核心服务程序。
3. 运行后端服务程序。
4. 部署前端网站。

### 使用

**普通用户**

1. 在任务包管理中心中创建自己的任务包。
2. 在可用任务中心中挑选想要使用的任务，并添加到自己的任意一个任务包中。
3. 查看通行证配置中心是否存在需要配置的选项。
4. 通行证配置完毕后设定任务包参数即可，开关自己需要的功能、定时时间等。

**开发者**

0. 基础功能与普通用户一样。
1. 可发布属于自己的任务。
2. 可发布属于自己的帮助文档。

**管理员**

0. 在功能上来说基础功能与普通用户一样，但并没有给管理员UI上的操作，仅作为审核员。
1. 在任务审核中心中审核开发者发布的任务，审核通过后才会在任务中心中上架。
2. 在帮助文档审核中心中审核开发者发布的帮助文档，审核通过后才会在帮助中上架。

### 预览图

![预览图01](https://github.com/Bzi-Han/taskcloud/blob/main/images/1.jpg)
![预览图02](https://github.com/Bzi-Han/taskcloud/blob/main/images/2.jpg)
![预览图03](https://github.com/Bzi-Han/taskcloud/blob/main/images/3.jpg)
![预览图04](https://github.com/Bzi-Han/taskcloud/blob/main/images/4.jpg)
![预览图05](https://github.com/Bzi-Han/taskcloud/blob/main/images/5.jpg)
![预览图06](https://github.com/Bzi-Han/taskcloud/blob/main/images/6.jpg)
![预览图07](https://github.com/Bzi-Han/taskcloud/blob/main/images/7.jpg)
![预览图08](https://github.com/Bzi-Han/taskcloud/blob/main/images/8.jpg)
![预览图09](https://github.com/Bzi-Han/taskcloud/blob/main/images/9.jpg)