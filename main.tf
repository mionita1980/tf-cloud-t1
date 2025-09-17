data "external" "my_list" {
  program = [ "bash", "get-my-list.sh" ]
}

output "display_my_json_value" {
  value = "${data.external.my_list.result.aa}"
}
