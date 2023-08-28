source "amazon-ebs" "basic-test" {
  region = "us-east-1"
  instance_type = "m3.medium"
  source_ami = "ami-76b2a71e"
  ssh_username = "ubuntu"
  ami_name = "packer-plugin-bundled-amazon-ebs-test"
}

build {
  sources = ["source.amazon-ebs.basic-test"]
}
