resource "aws_iam_user" "us1" {
  name = "jenny"
}

resource "aws_iam_user" "us2" {
  name = "rose"
}

resource "aws_iam_user" "us3" {
  name = "lisa"
}

resource "aws_iam_user" "us4" {
  name = "jisoo"
}



resource "aws_iam_user" "us5" {
  name = "jihyo"
}

resource "aws_iam_user" "us6" {
  name = "sana"
}

resource "aws_iam_user" "us7" {
  name = "momo"
}

resource "aws_iam_user" "us8" {
  name = "dahyun"
}

resource "aws_iam_group" "gr1" {
  name = "blackpink"
}
resource "aws_iam_group" "gr2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team1" {
  name = "testing-group-membership1"

  users = [
    aws_iam_user.us1.name,
    aws_iam_user.us2.name,
    aws_iam_user.us3.name,
    aws_iam_user.us4.name,
     aws_iam_user.us9.name,
  ]

  group = aws_iam_group.gr1.name
}


resource "aws_iam_group_membership" "team2" {
  name = "testing-group-membership2"

  users = [
    aws_iam_user.us5.name,
    aws_iam_user.us6.name,
    aws_iam_user.us7.name,
    aws_iam_user.us8.name,
     aws_iam_user.us10.name,
  ]

  group = aws_iam_group.gr2.name
}


resource "aws_iam_user" "us9" {
  name = "miyeon"
}

resource "aws_iam_user" "us10" {
  name = "mina"
}