# foundry-hardhat-template • [![tests](https://github.com/brianle83/foundry-hardhat-template/actions/workflows/tests.yml/badge.svg)](https://github.com/brianle83/foundry-hardhat-template/actions/workflows/tests.yml) [![lints](https://github.com/brianle83/foundry-hardhat-template/actions/workflows/lints.yml/badge.svg)](https://github.com/brianle83/foundry-template/actions/workflows/lints.yml) ![license](https://img.shields.io/github/license/brianle83/foundry-hardhat-template)

Template repository for Hardhat and Foundry in projects.

### Getting Started

- Use Foundry:

```bash
forge install
forge test
```

- Use Hardhat:

```bash
npm install
npx hardhat test
```

### Development

- Run tests with either Hardhat or Foundry:

```bash
forge test
# or
npx hardhat test
```

- Use Hardhat's task framework:

```bash
npx hardhat example
```

- Install libraries with Foundry which work with Hardhat:

```bash
forge install rari-capital/solmate # Already in this repo, just an example
```

### Notes

Whenever you install new libraries using Foundry, make sure to update your `remappings.txt` file by running `forge remappings > remappings.txt`. This is required because we use `hardhat-preprocessor` and the `remappings.txt` file to allow Hardhat to resolve libraries you install with Foundry.
