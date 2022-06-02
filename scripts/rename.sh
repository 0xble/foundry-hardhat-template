#!/usr/bin/env bash

# Make sed command compatible in both Mac and Linux environments
# Reference: https://stackoverflow.com/a/38595160/8696958
sedi () {
    sed --version >/dev/null 2>&1 && sed -i -- "$@" || sed -i "" "$@"
}

# Read the new repo name
echo Enter your new repo name:
read repo

# Rename instances of "foundry-hardhat-template" to the new repo name in package.json
sedi 's/foundry-hardhat-template/'${repo}'/g' 'package.json'

# Rename instances of "foundry-hardhat-template" to the new repo name in README.md
sedi 's/foundry-hardhat-template/'${repo}'/g' 'README.md'
sedi 's/.'${repo}'..https:\/\/github.com\/brianle83\/'${repo}'./[foundry-hardhat-template](https:\/\/github.com\/brianle83\/foundry-hardhat-template)/g' 'README.md'
