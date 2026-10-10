# Deploying .dotfiles

```bash
sudo systemctl start sshd
sudo systemctl enable sshd
```

ssh in from laptop

```bash
ssh-copy-id username@remote-server.example
```

harden ssh on workstation

```/etc/ssh/sshd_config.d/20-force_publickey_auth.conf
PasswordAuthentication no
AuthenticationMethods publickey
```

```/etc/ssh/sshd_config.d/20-deny_root.conf
PermitRootLogin no
```

add public key to github via ssh

clone dotfiles repo to workstation

symlink bash and git configuration

add public key to allowed_signers
