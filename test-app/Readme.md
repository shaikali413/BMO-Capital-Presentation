gpg --batch --generate-key <<EOF
Key-Type: RSA
Key-Length: 4096
Subkey-Type: RSA
Subkey-Length: 4096
Name-real: bmo-app-gpg
Expire-Date: 0
%no-protection
%commit
EOF

gpg --help for other command like

gpg --list-keys
gpg --export


sops -e app-gpg.yaml > app.gpg.enc.yaml
this will encrpyt with the cluster gpg key