FROM alpine:3.10

# Installs latest Chromium (76) package.
RUN apk add --no-cache \
  chromium \
  nss \
  freetype \
  freetype-dev \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  nodejs \
  npm \
  yarn 

WORKDIR /home/pptruser/app

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

# Puppeteer v1.17.0 works with Chromium 76.
RUN yarn add puppeteer

# Add user so we don't need --no-sandbox.
RUN addgroup -S pptruser && adduser -S -g pptruser pptruser \
  && mkdir -p /home/pptruser/Downloads /home/pptruser/app \
  && chown -R pptruser:pptruser /home/pptruser/app

# Run everything after as non-privileged user.
#USER pptruser

COPY ./examples ./examples