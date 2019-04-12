# Typora on Docker

## License

**<u>ATTENTION</u>** : Typora is not a free software, your can't modify Typora. See [https://support.typora.io/License-Agreement/](https://support.typora.io/License-Agreement/) for more information about that. Only my script is under Apache license.

## Objective

Use typora on a docker

## Usage

The next command make `~/.dockerconfig/typora` for configuration and launch a uzka/typora Docker with a volume of current directory.

```sh
typora myFile.md
```

## Installation

### From docker hub

```sh
# Install docker for your distribution
git clone https://gitlab.com/uzka/devel-docker-typora.git
cd devel-docker-typora
make download
sudo make install
```

### Local build

```sh
# Install docker for your distribution
git clone https://gitlab.com/uzka/devel-docker-typora.git
cd devel-docker-typora
make
sudo make install
```

