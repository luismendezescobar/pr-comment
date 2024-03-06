FROM ruby:3-alpine

LABEL "com.github.actions.name"="PR Comment"
LABEL "com.github.actions.description"="Leaves a comment on an open PR based on the contents of a file."
LABEL "com.github.actions.repository"="https://github.com/mac/comment-on-pr"
LABEL "com.github.actions.maintainer"="Luis Mendez"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="black"

RUN gem install octokit

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]