#!/usr/bin/env bash

CHART_FILE="$1"

if [[ -z "$CHART_FILE" ]]; then
    echo "Usage: $0 <name-of-chart.tgz>" >&2
    exit 1
fi

# Ensures we only publish when $1 == $GORELEASER_ARTIFACT_FILE
if [[ -n "${GORELEASER_ARTIFACT_FILE}" && "${GORELEASER_ARTIFACT_FILE}" != "${CHART_FILE}" ]]; then
    echo "skipping artifact: ${GORELEASER_ARTIFACT_FILE}" >&2
    exit 0
fi

{
    echo "Publishing!"
    echo "$@"
} >&2

exit 1
