resource local_file sample1 {
  filename= "sample1.txt"
  content = "I am learning Terraform"
  file_permission = 0777
  
}

resource local_file sample2 {
  filename= "sample2.txt"
  sensitive_content = "Hello Man!"
  file_permission = 0400
}
  
