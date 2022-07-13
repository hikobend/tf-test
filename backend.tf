terraform {
  # バージョン指定
    required_version = "1.2.4"
  backend "s3" {
    # 自分で作ったバケット名を選択
    bucket = "tf-kohei-test-tfstate"
    # tfstateの保管場所を設定
    key    = "terraform.tfstate"
    # リージョンの設定
    region = "ap-northeast-1"
  }
}

# awsに対して行う
provider "aws" {
  region = "ap-northeast-1"
}
