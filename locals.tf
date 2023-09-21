locals{
  decoded_configuration = yamldecode(file(var.configuration_file))
  configuration = {for index, entry in local.decoded_configuration:
    index => {
      bucket = entry.bucket
      tags = merge(var.labels, entry.tags)
    }
  }
}
