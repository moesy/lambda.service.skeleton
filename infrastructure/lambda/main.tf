variable "app_name" {}
variable "app_region" {}
variable "auth_profile" {}
variable "auth_credentials_file" {}

provider "aws" {
  region                   = "${var.app_region}"
  shared_credentials_file  = "${var.auth_credentials_file}"
  profile                  = "${var.auth_profile}"
}


resource "aws_iam_role_policy" "lambda-invoke" {
  name = "${var.function_name}-lambda-invoke"
  role = "${aws_iam_role.main.id}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "lambda:InvokeFunction"
      ]
    }
  ]
}
EOF
}


resource "aws_iam_role" "main" {
    name = "lambda-${var.function_name}-role"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": ["lambda.amazonaws.com", "apigateway.amazonaws.com"]
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "main" {
    name = "${var.function_name}-lambda-policy"
    role = "${aws_iam_role.main.id}"
    policy = <<POLICY
{
    "Version": "2012-10-17",
       "Statement": [
        {
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Effect": "Allow",
            "Resource": "arn:aws:logs:*:*:*"
        }
    ]
}
POLICY
}


resource "aws_lambda_function" "main" {
    filename = "${var.payload_path}"
    function_name = "${var.function_name}"
    description = "${var.function_description}"
    handler = "${var.handler}"
    role = "${aws_iam_role.main.arn}"
    memory_size = 128
    runtime = "python2.7"
    timeout = "${var.function_timeout}"
    source_code_hash = "${base64sha256(file("${var.payload_path}"))}"
}
