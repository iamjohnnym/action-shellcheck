FROM debian:latest

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh
RUN apt-get update && apt-get install --no-install-recommends -y shellcheck \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/runaction.sh"]

LABEL "name"="shellcheck"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.1.1"
LABEL "com.github.actions.name"="shellcheck"
LABEL "com.github.actions.description"="Run shell check on ALL sh files in the repository."
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="black"
