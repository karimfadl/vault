resource "vault_policy" "admin" {
	name = "admin"
	policy = file("admin-policy.hcl")
}

resource "vault_policy" "dummy-users" {
        name = "dummy-users"
        policy = file("dummy-policy.hcl")
}
