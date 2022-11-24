variable userage {
	type = map 
	default = {
		demouser = 20 
		testuser = 23
	}
}

variable username {
	type = string 
}

output "age" {
	value = "My Name Is ${var.username} and my age is ${lookup(var.userage, var.username)}"
}
