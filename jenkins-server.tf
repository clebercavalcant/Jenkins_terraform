resource "aws_instance" "jenkins-server" {
    ami                     = "ami-06078a297452ba5aa"
    instance_type           = "t2.micro"
    security_groups         = sglab
    
            tags                = {
        Name                = "Jenkins"
        }
    }
   