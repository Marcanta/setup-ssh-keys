# Setup ssh keys for your servers

this action send authorized ssh keys on your servers.

## Inputs

### `params`
**Required** an object with the label of your server as key and the servers secrets as values
_example:_ 
```json
{
    "CATALOG_TEST": {
        "port": 20314,
        "ip": "172.16.0.21",
        "password": "wdsjdsfofsdojdsojsdojds"
    },
    "BACKOFF_TEST": {
        "port": 20314,
        "ip": "172.16.0.21",
        "password": "wdsjdsfofsdojdsojsdojds"
    }
}
```

## Outputs

TODO

## Example usage

```yaml
uses: Marcanta/setup-ssh-keys@master
with:
    params: ${{ secrets }}
```
