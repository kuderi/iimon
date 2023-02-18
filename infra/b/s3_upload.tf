# s3_upload.tf

# AWSプロバイダーを定義する
provider "aws" {
  region = "us-east-1" # 任意のリージョンを選択
}

# S3のバケットを定義する
resource "aws_s3_bucket" "example" {
  bucket = "example-bucket" # 任意のバケット名を選択
  acl    = "private"       # バケットのアクセス許可を設定
}

# S3のローカルファイルをアップロードするための設定を定義する
resource "aws_s3_bucket_object" "example_object" {
  bucket = aws_s3_bucket.example.id
  key    = "sample.txt"    # アップロード後のファイル名を指定
  source = "path/to/sample.txt" # ローカルのファイルパスを指定
}

