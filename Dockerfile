FROM jekyll/jekyll
COPY . .
RUN jekyll build
RUN ls -al
