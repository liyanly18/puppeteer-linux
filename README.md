# Puppeteer-linux

[Puppeteer docker image](https://hub.docker.com/r/liyanlab/puppeteer-linux)

## Installation

```
docker pull liyanlab/puppeteer-linux
```

## Example

```
sh bin/start.sh
```

## Usage
The puppeteer images provide the `pptruser` user as an unprivileged user, the user can be activated in the `Dockerfile`:
```
FROM liyanlab/puppeteer-linux:latest
...
USER pptruser
```

## License
[MIT](https://github.com/liyanly18/puppeteer-linux/blob/master/LICENSE)
