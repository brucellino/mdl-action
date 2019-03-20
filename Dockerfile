FROM ruby:2.6.2-alpine3.9

LABEL "com.github.actions.name"="GitHub Action for Markdown Lint"
LABEL "com.github.actions.description"="Run Markdownlint comands"
LABEL "com.github.actions.icon"="md"
LABEL "com.github.actions.color"="00000"
LABEL "maintainer"="brucellino@gmail.com"

COPY Gemfile /
COPY Gemfile.lock /
RUN bundle install
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN ls /
ENTRYPOINT [ "/entrypoint.sh" ]