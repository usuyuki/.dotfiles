#!/bin/bash

# ディレクトリの作成
mkdir -p compressed

# 引数から圧縮率を取得（デフォルト値は75）
compression_quality=${1:-75}

# .JPG画像のみ処理
for file in *.JPG; do
    if [ -f "$file" ]; then
        # 圧縮処理
        output_file="compressed/${file%.JPG}_compressed.JPG"
        convert "$file" -quality $compression_quality "$output_file"
        echo "圧縮完了: $file -> $output_file"
    fi
done

echo "すべての画像を圧縮しました。"
