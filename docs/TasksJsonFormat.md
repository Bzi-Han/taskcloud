# TasksJsonFormat

### 脚本语言类型

    lua => 0
    javascript => 1
    python => 2

### 基础格式

    {
        "author": "你的名字",
        "scripts": [
            {
                "name": "脚本名称",
                "description": "脚本描述",
                "script": "脚本路径",
                "warning": "注意事项(可选)",
                "type": "脚本语言类型(可选)",
                "version": "脚本版本(可选)"
            },
            ...
        ]
    }