# API Documentation

#### 模块

| Name | Description |
| - | - |
| [crypto](#crypto) | 加解密模块 |
| [json](#json) | json操作模块 |
| [requests](#requests) | http请求模块 |
| [tools](#tools) | 工具模块 |
| [system](#system) | 系统模块 |

---

# crypto

加解密工具集。

#### 方法

| Name | Description |
| - | - |
| [crypto.gbkToUTF8](#gbkToUTF8) | gbk转utf-8 |
| [crypto.utf8ToGBK](#utf8ToGBK) | utf-8转gbk |
| [crypto.urlEncode](#urlEncode) | url编码 |
| [crypto.urlDecode](#urlDecode) | url解码 |
| [crypto.base64Encode](#base64Encode) | base64编码 |
| [crypto.base64Decode](#base64Decode) | base64解码 |
| [crypto.md5](#md5) | md5信息摘要 |
| [crypto.sha1](#sha1) | sha1信息摘要 |
| [crypto.sha256](#sha256) | sha256信息摘要 |
| [crypto.sha512](#sha512) | sha512信息摘要 |
| [crypto.aesEncrypt](#aesEncrypt) | aes加密 |
| [crypto.aesDecrypt](#aesDecrypt) | aes解密 |
| [crypto.desEncrypt](#desEncrypt) | des加密 |
| [crypto.desDecrypt](#desDecrypt) | des解密 |
| [crypto.rsaGenerateKeyPair](#rsaGenerateKeyPair) | rsa密钥对生成 |
| [crypto.rsaEncrypt](#rsaEncrypt) | rsa加密 |
| [crypto.rsaDecrypt](#rsaDecrypt) | rsa解密 |

---

### gbkToUTF8

gbk转utf-8。

`string gbkToUTF8(string data)`

#### 参数

*data*
需要转码的数据

#### 返回值

转码后的数据。

---

### utf8ToGBK

utf-8转gbk。

`string utf8ToGBK(string data)`

#### 参数

*data*
需要转码的数据

#### 返回值

转码后的数据。

---

### urlEncode

url编码。

`string urlEncode(string data)`

#### 参数

*data*
需要编码的数据

#### 返回值

编码后的数据。

---

### urlDecode

url解码。

`string urlDecode(string data)`

#### 参数

*data*
需要解码的数据

#### 返回值

解码后的数据。

---

### base64Encode

base64编码。

`string base64Encode(string data)`

#### 参数

*data*
需要编码的数据

#### 返回值

编码后的数据。

---

### base64Decode

base64解码。

`string base64Decode(string data)`

#### 参数

*data*
需要解码的数据

#### 返回值

解码后的数据。

---

### md5

md5信息摘要。

`string md5(string data)`

#### 参数

*data*
需要计算的数据

#### 返回值

计算后的数据。

---

### sha1

sha1信息摘要。

`string sha1(string data)`

#### 参数

*data*
需要计算的数据

#### 返回值

计算后的数据。

---

### sha256

sha256信息摘要。

`string sha256(string data)`

#### 参数

*data*
需要计算的数据

#### 返回值

计算后的数据。

---

### sha512

sha512信息摘要。

`string sha512(string data)`

#### 参数

*data*
需要计算的数据

#### 返回值

计算后的数据。

---

### aesEncrypt

aes加密。

`string aesEncrypt(string data, string key, string iv, string mode, string padding)`

#### 参数

*data*
需要加密的数据

*key*
密钥

*iv*
偏移

*mode*
加密模式

*padding*
对齐方式

#### 返回值

base64编码的加密后的数据。

#### 注意

*iv* 的值若是`ECB`模式下可以随便填或者留空。

*mode* 的值必须是以下类型之一：
+ `'ECB'`
+ `'CBC'`
+ `'CFB'`
+ `'CTR'`
+ `'OFB'`

*padding* 的值必须是以下类型之一：
+ `''`
+ `'PKCS'`
+ `'ZEROS'`
+ `'NO'`
+ `'W3C'`

---

### aesDecrypt

aes解密。

`string aesDecrypt(string data, string key, string iv, string mode, string padding)`

#### 参数

*data*
需要解密的数据

*key*
密钥

*iv*
偏移

*mode*
解密模式

*padding*
对齐方式

#### 返回值

解密后的数据。

#### 注意

*data* 的值必须是`base64`编码后的数据。

*iv* 的值若是`ECB`模式下可以随便填或者留空。

*mode* 的值必须是以下类型之一：
+ `'ECB'`
+ `'CBC'`
+ `'CFB'`
+ `'CTR'`
+ `'OFB'`

*padding* 的值必须是以下类型之一：
+ `''`
+ `'PKCS'`
+ `'ZEROS'`
+ `'NO'`
+ `'W3C'`

---

### desEncrypt

des加密。

`string desEncrypt(string data, string key, string iv, string mode, string padding)`

#### 参数

*data*
需要加密的数据

*key*
密钥

*iv*
偏移

*mode*
加密模式

*padding*
对齐方式

#### 返回值

base64编码的加密后的数据。

#### 注意

*iv* 的值若是`ECB`模式下可以随便填或者留空。

*mode* 的值必须是以下类型之一：
+ `'ECB'`
+ `'CBC'`
+ `'CFB'`
+ `'CTR'`
+ `'OFB'`

*padding* 的值必须是以下类型之一：
+ `''`
+ `'PKCS'`
+ `'ZEROS'`
+ `'NO'`
+ `'W3C'`

---

### desDecrypt

des解密。

`string desDecrypt(string data, string key, string iv, string mode, string padding)`

#### 参数

*data*
需要解密的数据

*key*
密钥

*iv*
偏移

*mode*
解密模式

*padding*
对齐方式

#### 返回值

解密后的数据。

#### 注意

*data* 的值必须是`base64`编码后的数据。

*iv* 的值若是`ECB`模式下可以随便填或者留空。

*mode* 的值必须是以下类型之一：
+ `'ECB'`
+ `'CBC'`
+ `'CFB'`
+ `'CTR'`
+ `'OFB'`

*padding* 的值必须是以下类型之一：
+ `''`
+ `'PKCS'`
+ `'ZEROS'`
+ `'NO'`
+ `'W3C'`

---

### rsaGenerateKeyPair

rsa密钥对生成。

`object rsaGenerateKeyPair([int keySize] [, bool hex] [, string seed])`

#### 参数

*keySize*
密钥大小

*hex*
是否以十六进制方式编码

*seed*
用户提供的随机池种子

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

返回的对象拥有两个成员：
+ `publicKey` 公钥
+ `privateKey` 私钥

#### 注意

此函数的三个参数均为可选参数。

*keySize* 的值默认为`1024`。

*hex* 的值默认为`true`。

*seed* 的默认值为`空`。

---

### rsaEncrypt

rsa加密

`string rsaEncrypt(string publicKey, string data, bool oaep)`

#### 参数

*publicKey*
公钥

*data*
需要加密的数据

*oaep*
是否以`OAEP(Optimal Asymmetric Encryption Padding)`的方式填充，否则以`PKCS`的方式填充

#### 返回值

加密后的数据。

#### 注意

*publicKey* 的值可以是`hex`编码的，`base64`编码的以及带`-----BEGIN xxx KEY-----`的。

*oaep* 推荐为`true`。

---

### rsaDecrypt

rsa解密

`string rsaDecrypt(string privateKey, string data, bool oaep)`

#### 参数

*privateKey*
私钥

*data*
需要解密的数据

*oaep*
是否以`OAEP(Optimal Asymmetric Encryption Padding)`的方式填充，否则以`PKCS`的方式填充

#### 返回值

解密后的数据。

#### 注意

*privateKey* 的值可以是`hex`编码的，`base64`编码的以及带`-----BEGIN xxx KEY-----`的。

*data* 的编码需要与*privateKey*的编码一致。

*oaep* 的值需要与加密的填充方式一致。

---

# json

json数据加载器。

#### 方法

| Name | Description |
| - | - |
| [json.loads](#loads) | 加载json文本数据为对象 |

---

### loads

加载json文本数据为对象。

`object loads(string data)`

#### 参数

*data*
需要加载的数据

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

---

# requests

HTTP请求模块。

#### 方法

| Name | Description |
| - | - |
| [requests.get](#get) | HTTP GET |
| [requests.post](#post) | HTTP POST |
| [requests.put](#put) | HTTP PUT |
| [requests.delete](#delete) | HTTP DELETE |

---

### get

HTTP GET请求。

`object get(string url [, object headers] [, string proxy] [, bool redirect] [, int timeout])`

#### 参数

*url*
访问的目标地址

*headers*
附加头 `无`

*proxy*
想要使用的代理的URL `无`

*redirect*
是否重定向 `true`

*timeout*
超时时间(ms) `100000`

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

对象中包含以下属性：
+ `code` 请求结果状态码
+ `headers` 请求结果返回头
+ `content` 请求的结果

#### 注意

*headers* 的值必须是一个对象，根据使用的语言不同而不同。

---

### post

HTTP POST请求。

`object post(string url, string|object data [, object headers] [, string proxy] [, bool redirect] [, int timeout])`

#### 参数

*url*
访问的目标地址

*data*
提交的数据，可以是字符串或对象

*headers*
附加头 `无`

*proxy*
想要使用的代理的URL `无`

*redirect*
是否重定向 `true`

*timeout*
超时时间(ms) `100000`

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

对象中包含以下属性：
+ `code` 请求结果状态码
+ `headers` 请求结果返回头
+ `content` 请求的结果

#### 注意

*data* 的值若是一个字符串则默认为表单数据，若为一个对象则默认为JSON数据，如需要调整可直接在`headers`中添加`Content-Type`属性。

*headers* 的值必须是一个对象，根据使用的语言不同而不同。

---

### put

HTTP PUT请求。

`object put(string url, string|object data [, object headers] [, string proxy] [, bool redirect] [, int timeout])`

#### 参数

*url*
访问的目标地址

*data*
提交的数据，可以是字符串或对象

*headers*
附加头 `无`

*proxy*
想要使用的代理的URL `无`

*redirect*
是否重定向 `true`

*timeout*
超时时间(ms) `100000`

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

对象中包含以下属性：
+ `code` 请求结果状态码
+ `headers` 请求结果返回头
+ `content` 请求的结果

#### 注意

*data* 的值若是一个字符串则默认为表单数据，若为一个对象则默认为JSON数据，如需要调整可直接在`headers`中添加`Content-Type`属性。

*headers* 的值必须是一个对象，根据使用的语言不同而不同。

---

### delete

HTTP DELETE请求。

`object delete(string url [, object headers] [, string proxy] [, bool redirect] [, int timeout])`

#### 参数

*url*
访问的目标地址

*headers*
附加头 `无`

*proxy*
想要使用的代理的URL `无`

*redirect*
是否重定向 `true`

*timeout*
超时时间(ms) `100000`

#### 返回值

根据使用的语言不同返回不同的对象：
+ `Lua` 返回一个`table`
+ `Python` 返回一个`dict`
+ `Javascript` 返回一个`object`

对象中包含以下属性：
+ `code` 请求结果状态码
+ `headers` 请求结果返回头
+ `content` 请求的结果

#### 注意

*headers* 的值必须是一个对象，根据使用的语言不同而不同。

---

# tools

工具模块。

#### 方法

| Name | Description |
| - | - |
| [logger.operation](#operation) | 输出操作类型的日志 |
| [logger.info](#info) | 输出信息类型的日志 |
| [logger.failed](#failed) | 输出失败类型的日志 |
| [logger.succeed](#succeed) | 输出成功类型的日志 |

---

### operation

输出操作类型的日志。

`void operation(...)`

#### 参数

任意个任意类型的参数。

#### 注意

对于服务程序`core`，此消息将会被发往此次与其通信的客户端。

对于本地程序`local`，此消息将会在控制台直接输出。

---

### info

输出信息类型的日志。

`void info(...)`

#### 参数

任意个任意类型的参数。

#### 注意

对于服务程序`core`，此消息将会被发往此次与其通信的客户端。

对于本地程序`local`，此消息将会在控制台直接输出。

---

### failed

输出失败类型的日志。

`void failed(...)`

#### 参数

任意个任意类型的参数。

#### 注意

对于服务程序`core`，此消息将会被发往此次与其通信的客户端。

对于本地程序`local`，此消息将会在控制台直接输出。

---

### succeed

输出成功类型的日志。

`void succeed(...)`

#### 参数

任意个任意类型的参数。

#### 注意

对于服务程序`core`，此消息将会被发往此次与其通信的客户端。

对于本地程序`local`，此消息将会在控制台直接输出。

---

# system

系统模块。

#### 方法

| Name | Description |
| - | - |
| [system.delay](#delay) | 延迟 |

---

### delay

延迟任意毫秒后继续执行。

`void delay(int milliseconds)`

#### 参数

*milliseconds*
需要延迟的毫秒数

---
