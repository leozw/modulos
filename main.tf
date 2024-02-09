provider "github" {
  token = "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"
}

data "github_repository" "example" {
  full_name = "Emerson89/modules-terraform"
}

output "name" {
  value = data.github_repository.example.full_name
}

module "log-group" {
  source = "git::https://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:x-oauth-basic@github.com/leozw/Flask-Webhook-Receiver"

  lognames = ["log1", "log2", "log3"]
}






# provider "github" {
#   token = var.github_token
# }

# module "lambda" {
#   source = "./module/lambda/"

#   function_name = "funcaasdo2-lambda"
#   runtime       = "nodejs14.x"
#   handler       = "index.handler"
#   architectures = ["x86_64"]

#   tracing_config = "Active"

#   memory_size = 256
#   timeout     = 10

#   s3_bucket = "lambda-zw-prd"
#   s3_key    = "node-app-x-ray.zip"

#   additional_policies = [
#     jsonencode({
#       "Version" : "2012-10-17",
#       "Statement" : [
#         {
#           "Effect" : "Allow",
#           "Action" : [
#             "ec2:CreateNetworkInterface",
#             "ec2:DescribeNetworkInterfaces",
#             "ec2:DeleteNetworkInterface",
#             "ec2:AssignPrivateIpAddresses",
#             "ec2:UnassignPrivateIpAddresses"
#           ],
#           "Resource" : "*"
#         }
#       ]
#     })
#   ]

#   variables = {
#     ENV_VAR_EXEMPLO = "valor"
#   }

#   vpc_config = {
#     security_groups = ["sg-06651f16640f5263c"]
#     subnets         = ["subnet-08ea38bbf8eae5bfb"]
#   }

# }
