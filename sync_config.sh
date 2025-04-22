#!/bin/bash

SOURCE_DIR="/Users/miku/Library/Rime/sync/483b5b7f-e8d1-42c8-b0a4-d5adab0bef06"
DEST="./"

# 检查源目录是否存在
if [ ! -d "$SOURCE_DIR" ]; then
    echo "错误：源目录不存在，请检查路径：$SOURCE_DIR"
    exit 1
fi

# 检查源目录是否为空
if [ -z "$(ls -A $SOURCE_DIR)" ]; then
    echo "错误：源目录为空，没有文件可以复制"
    exit 1
fi

# 检查目标目录是否存在
if [ ! -d "$DEST" ]; then
    echo "错误：目标目录不存在，请检查路径：$DEST"
    exit 1
fi

# 执行复制操作
cp -r "$SOURCE_DIR"/* "$DEST"
if [ $? -eq 0 ]; then
    echo "目录内容复制成功"
    echo "已复制的文件列表："
    ls -l "$DEST"
else
    echo "目录复制失败"
fi

