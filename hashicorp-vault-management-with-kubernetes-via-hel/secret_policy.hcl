path "kv/metadata/"{
capabilities = ["list"]
}

path "kv/metadata/users/"{
capabilities = ["list"]
}

path "kv/data/users/karim"{
capabilities = ["list" , "read" , "update" , "create" , "delete"]
}

path "kv/delete/users/karim"{
capabilities = ["update" , "delete"]
}
