FROM alpine:latest
LABEL maintainer="Olivier MARY <olivier@rubike.tech>"

# Environnement
ENV WRK_BRANCH=4.0.2
ENV WRK_URL=https://github.com/wg/wrk.git

# Dependencies
RUN apk add --no-cache  \
    git\
    make\
    perl\
    libgcc\
    openssl\
    build-base\
    linux-headers

# Get src
RUN git clone --branch $WRK_BRANCH $WRK_URL

# Build & install
RUN make -C ./wrk all
RUN mv ./wrk/wrk /usr/bin

# Clean image
RUN rm -rf ./wrk
RUN apk del \
    git\
    make\
    perl\
    openssl\
    build-base\
    linux-headers

# Run
ENTRYPOINT ["wrk"]
