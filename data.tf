data "local_file" "ami_id" {
  filename = "${path.module}/ami_id.txt"
}
