#!/bin/bash

# ディレクトリの作成
mkdir -p compressed

# 引数から圧縮率を取得（デフォルト値は75）
compression_quality=${1:-75}

for file in *.JPG *.jpg; do
	if [ -f "$file" ]; then
		output_file="compressed/${file%.*}_compressed.JPG"
		magick "$file" -quality $compression_quality "$output_file"
		echo "${file##*.}圧縮完了: $file -> $output_file"
	fi
done

echo "すべての画像を圧縮しました。"
