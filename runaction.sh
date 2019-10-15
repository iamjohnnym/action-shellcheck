#!/usr/bin/env bash

cd "$GITHUB_WORKSPACE" || exit 1
for FILE in $(find . -type f ! -iname 'Makefile' -exec \
grep '/usr/bin/env bash' {} + | awk -F':' '{print $$1}') ; do \
    echo "Checking: ${FILE}" ; \
    shellcheck "${FILE}" ; \
done
