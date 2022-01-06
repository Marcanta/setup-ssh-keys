# Setup ssh keys for your servers

this action send authorized ssh keys on your servers.

## Inputs

### `params`
**Required** an object with the label of your server as key and the servers secrets as values
_example:_ 
```json
{
    "<SERVER_1_NAME>": {
        "port": "<port_number>",
        "ip": "<server_ip>",
        "password": "<server_password>",
        "user": "<server_username>"
    },
    "<SERVER_2_NAME>": {
        "port": "<port_number>",
        "ip": "<server_ip>",
        "password": "<server_password>",
        "user": "<server_username>"
    }
}
```
### `authorized_keys`
**Required** a text with all of your ssh public keys
_example:_ 
```text
# user1
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/T6vB0O8//oKnVsdZ02lahcD9Q5qJb33jOwBwg9NFL <username1>@MacBook-Pro.local

# user2
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/T6vB0O8//oKnVsdZ02lahcD9Q5qJb33jOwBwg9NFL <username2>@MacBook-Pro.local
```

## Outputs

TODO

## Example usage

```yaml
uses: Marcanta/setup-ssh-keys@master
with:
    params: ${{ secrets }}
```
