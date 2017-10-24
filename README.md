spaceapi-validator-cli
==
[![Go Report Card](https://goreportcard.com/badge/github.com/gidsi/spaceapi-validator-cli)](https://goreportcard.com/report/github.com/gidsi/spaceapi-validator-cli)
[![Build Status](https://travis-ci.org/gidsi/spaceapi-validator-cli.svg?branch=master)](https://travis-ci.org/gidsi/spaceapi-validator-cli)

Command line interface to verify a SpaceApi json file.

Usage
==
```bash
go get
go build
./spaceapi-validator-cli /path/to/your/spaceapi.json
```

Returns non-zero when something is wrong and tries to tell you whats wrong
