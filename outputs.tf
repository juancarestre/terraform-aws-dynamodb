output "dynamodb-arn" {
  description = "The ARN of the DynamoDB."
  value       = "${aws_dynamodb_table.ddb_table.arn}"
}

output "table_name" {
  description = "The ARN of the DynamoDB."
  value       = "${aws_dynamodb_table.ddb_table.id}"
}
