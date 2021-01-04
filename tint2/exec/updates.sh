#!/bin/sh

echo >&2 "Updates available ($(eopkg lu | wc -l))"

if [ "$(eopkg lu)" = 'No packages to upgrade.' ]; then
    echo
else
    echo >&2 "Updates available ($(eopkg lu | wc -l))"
    echo 
fi