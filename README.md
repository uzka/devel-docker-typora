# Typora on Docker

## Objective

Use typora on a docker

## Usage

The next command make `~/.dockerconfig/typora` for configuration and launch a uzka/typora Docker with a volume of current directory.

```sh
typora myFile.me
```

## Installation

```sh
# Install docker for your distribution
git clone https://gitlab.com/uzka/devel-docker-typora.git
cd devel-docker-typora
make download
sudo make install
```

