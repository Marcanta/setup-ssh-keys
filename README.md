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
        "password": "wdsjdsfofsdojdsojsdojds",
        "user": "toto"
    },
    "BACKOFF_TEST": {
        "port": 20314,
        "ip": "172.16.0.21",
        "password": "wdsjdsfofsdojdsojsdojds",
        "user": "titi"
    }
}
```
### `authorized_keys`
**Required** a text with all of your ssh public keys
_example:_ 
```text
# hugo @HugoDerigny
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCghmDV93QJmnAWoqq2gKcdr+xOiEKh02kGqLDRKRtaXsRgnBs75P3wVJBdURKNbdBbm8hPNUQhh/UOL3EzTBYOjuf66Gm8rAGi48x35krF8Q5slfQa1jZCV7o2FOGk9erbCldrZn/SZ5HpOMkWpmz2G1koSsT8spkDN+DoHtjpxcLq60VED4Sr9rZbygQvLHFuwQPqGWdavk+3SI3uJeQYsWBXaSFRsqcgUE51ZLjgrtQZZXouRsm5R+mPoR87wW6RRMLyTfmXFUftF8Ht7qyPfLl009oZQYjirb4xJCsTMLpBTat8A5MY3IyXB4CeQrSHVry0tg3eN1x8oqKk6G9DL+jIIFOtxSLNQkwZKirouuPxF5RBShrPOjeMzxaTRAgZJQ0aA82jbq7Oql6vd3faQQzsi03KioNSB4sDJe1YvZw3v473mq8xL66U/FGrOX+D67DBE1yLViUD69daE5cTvp/EeGjq5VnHFKEMN4jbQi5y2go9lCiqY3SSZSIysctusWczfRjyHlD8FW4uBOmlLK5lSbrOi9Q8zAz2rmC71uYObIuciXQTt3GOomMw4bQcB05aDOmtbtqAcAdCDvHxbJ6Ke3nPdP0KQO4FVpm2sZSkD3V/LN8X4aU0bP0tPXb8MqUzRr4BwAztz0UxjJZfX4HBVO/L1AXoygEizqXbQ== hugo@MBP-de-Hugo

# aime @Marcanta
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCx4j1I99nR88gruH5XrcG56pYXw8PiT3JZ0jpHRrWAWuyySa8hhYGAPV67RlgJ7K/Fluy91hUfXaGFmuiGjYouD7NydI+VoeAke0jU1miqHH8mHaTu184SZaC/J/f60U+FkspbT0YKOJaJhmtk3XoAHU4gaHMi+hyOr/xPzzNfgfyDkxpUrJQT1hQXy9NdOQ6nJqzOfzcKhq5UHsxA8VJp8ExO42xZpa1YD3npLvYvZmC3/wj2HoLBUvwzOc4CiH/QlehgY8G3bMQ6MtGcyJagkbtnKskseSO9sJ1Ditrq4wse0Vj5W36Vxyemf7quILMeaT0HaKbFAtDo713Fb4nVxJLT5JCRHArnssYpv3+LD0M2jUgmqtMYyzE9qCfbFOposP09331jg31bvx5qn797bG6daxbmG5tBSXsxkrNb67fWUTl2B3gaDV+I1ExXjLlfp2/9llXkrG+lv04B3g+X5ud/dGa4rC/4k+P0PUwQgQQEfZJq31td+YfcIbgfTuDefUQ0mb81rtmUn3RNlB9uehy4Jc5paXqgKpTsymxkLeLPGx4b8Zzz2qjJ2Rmzr2U0CQIgNBH+ISN/1PTzOhcChHfxYM9I+uIMkFVAHcNyAxa7/SLKOMYWV7FcIW091p/JmV0hfXl0JIRZKoCoUGt6VRgMDoI+eO1br37FG2SoPQ== marcanta@Aime-MacBook-Pro.local
```

## Outputs

TODO

## Example usage

```yaml
uses: Marcanta/setup-ssh-keys@master
with:
    params: ${{ secrets }}
```
