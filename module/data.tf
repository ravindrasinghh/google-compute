data "template_file" "container_setup" {
  template = "${file("${path.module}/script/container.tpl")}"
}