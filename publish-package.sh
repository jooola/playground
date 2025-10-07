#!/usr/bin/env bash

{
    echo "Publishing!"
    echo "$@"
    env
} >/dev/stderr
