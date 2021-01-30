#!/usr/bin/env bash
mkdir -p "docs"

for dir in $(find "protocol" -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq); do
    echo "Generating files in ${dir}..."
    find "${dir}" -name '*.proto'

    protoc \
    --proto_path=protocol \
    --hdocs_out=./docs \
    --hdocs_opt=markdown,reference.md \
    $(find "${dir}" -name '*.proto')

done
