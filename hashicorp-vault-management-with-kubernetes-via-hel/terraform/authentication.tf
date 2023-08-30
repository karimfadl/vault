resource "vault_auth_backend" "userpass" {
	type = "userpass"
}

resource "vault_generic_endpoint" "dummyuser" {
	depends_on = [vault_auth_backend.userpass]
	ignore_absent_fields = true
	path = "auth/userpass/users/dummyusers"
	data_json = <<EOT
{
"policies" : ["admin","dummy-users"],
"password" : "pleasechange"
}
EOT
}
