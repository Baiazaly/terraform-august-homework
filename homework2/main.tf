provider "aws" {
region = "us-east-1"
}


resource "aws_key_pair" "keypair" {
    key_name = "bastion-key"
    public_key = file("~/.ssh/id_rsa.pub")

}

resource "aws_s3_bucket" "bucket" {
    bucket = "kaizen-baiaz"
}

resource "aws_s3_bucket" "bucket2" {
    bucket_prefix ="kaizen-bai-"

}
resource "aws_s3_bucket" "bucket3"{
    bucket = "kaizen-bucket3"
}
resource "aws_s3_bucket" "bucket4" {
    bucket = "kaizen-bucket4"
}


import {
  to = aws_s3_bucket.bucket3
  id = "kaizen-bucket3"
}

import {
  to = aws_s3_bucket.bucket4
  id = "kaizen-bucket4"
}

resource "aws_iam_user" "lb" {
    for_each = toset(["jenny" , "rose", "lisa" , "jisoo"])
    name = each.value
}

resource "aws_iam_group" "user-group" {
    name = "blackpink"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
   for i in aws_iam_user.lb : i.name
    
  ]

  group = aws_iam_group.user-group.name
}

