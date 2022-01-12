variable "region" {
  default = "us-east-2"
}

variable "environment_name" {
  default = "dev"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "944956894329",
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::944956894329:role/GroupAccess-Admin"
      username = "GroupAccess-Admin"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::944956894329:user/bharathp"
      username = "bharathp"
      groups   = ["system:masters"]
    },
  ]
}

variable "ssl_cert_arn" {
  default = "arn:aws:acm:us-west-2:944956894329:certificate/3a57648e-d953-4fc9-affb-c3c2a5657a4c"
}

variable "jump_pem_key_name" {
  default = "dummy-name.pem"
}

variable "nodes_pem_key_name" {
  default = "dummy-name.pem"
}

variable "aws_profile_to_use" {
  default = "dev"
}

variable "create_ingress_nginx" {
  default = false
}

variable "create_jenkins" {
  default = false
}

variable "create_sonar" {
  default = false
}

variable "create_nexus" {
  default = false
}

variable "bastion_image_id" {
  default = "ami-0bfd41cde731af7cb"
}
