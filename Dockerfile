FROM rhub/r-minimal:4.1.2

RUN wget https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-linux-amd64.tar.gz && \
    tar xzf pandoc-2.13-linux-amd64.tar.gz && \
    mv pandoc-2.13/bin/* /usr/local/bin/ && \
    rm -rf pandoc-2.13*

RUN installr -d \
    -t "libxml2-dev gnutls-dev openssl-dev libx11-dev cairo-dev libxt-dev" \
    -a "libxml2 cairo libx11 font-xfree86-type1" \
    bookdown bslib xml2 downlit svglite