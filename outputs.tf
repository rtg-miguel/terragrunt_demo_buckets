output "buckets" {
  value = [for entry in local.configuration: entry.bucket] 
}
