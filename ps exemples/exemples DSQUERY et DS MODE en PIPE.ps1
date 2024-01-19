dsquery user "ou=Admins,dc=contoso,dc=com" | dsmod user -department "Information Technology"

dsmod user UserDN –pwd NewPassword -mustchpwd yes