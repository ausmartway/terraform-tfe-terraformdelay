##main.tf
# This resource will destroy (at least) 30 seconds after null_resource.next
resource "null_resource" "previous" {}

resource "time_sleep" "wait" {
  depends_on = [null_resource.previous]

  destroy_duration = "${var.delay_seconds}s"
}

# This resource will create (potentially immediately) after null_resource.previous
resource "null_resource" "ready" {
  depends_on = [time_sleep.wait]
}

output "delay_seconds" {
  value = var.delay_seconds

}