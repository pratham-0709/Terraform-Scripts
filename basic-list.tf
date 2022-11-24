variable users {
	type = list
	default = ["Demouser","Testuser","Listuser"]
}

output printfirst {
	value = "${join(",",var.users)}"
}

output Upper {
	value = "${upper(var.users[0])}"
}

output Lower {
	value = "${lower(var.users[2])}"
}
