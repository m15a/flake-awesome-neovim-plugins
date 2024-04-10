#!/usr/bin/env bash

set -euo pipefail

file=CHANGELOG.md

run() {
    echo >&2 "$*"
    "$@"
}

extract_version_from_changelog() {
    grep -Em1 '^## \[[[:digit:]]+\.' "$file" \
        | sed -E '1s|.*\[([^]]+)\].*|\1|'
}

old="$(extract_version_from_changelog)"
run nix run sourcehut:~m15a/bump.fnl -- "$file" "$@"
new="$(extract_version_from_changelog)"

if (( $(git status --short | wc -l) > 0 ))
then
    echo >&2 "Bump version: $old -> $new"
    run git add "$file"
    run git commit -m "release: $new"
    run git tag "v$new"
fi
