FROM ruby:3.2.2-slim

LABEL "com.github.actions.name"="GitHub Action for Markdown Lint"
LABEL "com.github.actions.description"="Run Markdownlint comands"
LABEL "com.github.actions.icon"="md"
LABEL "com.github.actions.color"="00000"
LABEL "maintainer"="brucellino@gmail.com"

COPY Gemfile /
COPY Gemfile.lock /
RUN bundle install
COPY entrypoint.sh /
RUN chmod +x  /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]