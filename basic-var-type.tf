variable username {
	type = string
}

variable age {
	type = number
}

output print {
	value = "Hello ${var.username} and age is ${var.age}"	
}
