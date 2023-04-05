terraform {
  backend "s3" {
    bucket = "yasu-tfstate"
    key    = "yasu/prod/routing/bitsyellow_com_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}