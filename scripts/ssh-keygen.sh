#!/usr/bin/env bash

ssh-keygen -t ed25519 -C "$(whoami)@$(uname -n)"
