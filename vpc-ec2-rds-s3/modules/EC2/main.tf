resource "aws_instance" "web_server" {
    ami = var.ami_id
    instance_type = var.instance_type

    user_data = file("./files/app_setup.sh")

    tags = {
      Name = "Webserver"
    }
}

