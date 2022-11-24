variable username {
	type = string 
}

variable age {
	type = number
}

output print {
	value = "My Name is ${var.username} and my age is ${var.age}"
}
