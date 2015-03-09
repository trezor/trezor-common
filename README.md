trezor-crypto
=============

Common files shared among TREZOR repositories.

This repo is meant to be included as submodule to others using:

    git submodule add https://github.com/trezor/trezor-common.git trezor-common


protobuf
----

Description of the Trezor protocol in [Google's Protocol Buffer](https://developers.google.com/protocol-buffers/) format

`apt-get install protobuf-compiler` then `make check` for generating binary files from protobuf definitions


signer
---

We whitelist what websites can communicate with Trezor through bridge and/or browser plugin. (Direct API is not affected.) The whitelist is defined in `config.json`

The configuration with all the whitelists gets signed by private key  by `sign.py`.

(public key is wired into plugin/bridge)

udev
------
udev is a file that helps with installing Trezor hardware on linux.

It needs to be put into `/lib/udev/rules.d/`. It gets automatically done by installers of plugins
