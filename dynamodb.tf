resource "aws_dynamodb_table" "ddb_table" {
  name                   = "${var.ddb-table-name}"
  read_capacity          = "${var.ddb-read-capacity}"
  write_capacity         = "${var.ddb-write-capacity}"
  hash_key               = "${var.ddb-hash-key-name}"
#  range_key              = "${var.ddb-range-key-name}"
#   attribute              = [
#     {
#       name = "${var.ddb-hash-key-name}"
#       type = "${var.ddb-hash-key-type}"
#     },
#     "${var.ddb-attributes}",
#   ]
  
  attribute {
    name = "${var.ddb-hash-key-name}"
    type = "S"
  }
  
  
  //local_secondary_index  = ["${var.lsi-list}"]
  //global_secondary_index = ["${var.gsi-list}"]
  tags                   = "${var.tags}"
#   stream_enabled         = "${var.stream-enabled}"
#   stream_view_type       = "${var.stream-view-type}"

  ttl {
    enabled        = "${var.ttl-enabled}"
    attribute_name = "${var.ttl-attribute-name}"
  }

  server_side_encryption {
    enabled = "${var.ddb-encryption}"
  }

  point_in_time_recovery {
    enabled = "${var.backup-enabled}"
  }
}
