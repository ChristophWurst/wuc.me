FROM jekyll/jekyll AS BUILDER
COPY . .
RUN jekyll build
RUN ls -al

FROM nginx
EXPOSE 80
COPY --from=BUILDER /srv/jekyll/_site /usr/share/nginx/html

