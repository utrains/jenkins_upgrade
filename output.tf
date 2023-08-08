# print the url of the server
output "jenkins_ssh_connection_command" {
  value = "ssh -i ${aws_key_pair.instance_key.key_name}.pem ec2-user@${aws_instance.jenkins_ec2_instance.public_dns}"
}
# print the url of the jenkins server
output "jenkins_url" {
  value = join("", ["http://", aws_instance.jenkins_ec2_instance.public_dns, ":", "8080"])
}
