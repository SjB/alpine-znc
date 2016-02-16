FROM alpine:3.3
MAINTAINER Nick Van Wiggeren "nick@facepwn.com"

RUN apk --update add znc znc-modperl znc-modtcl ca-certificates

ADD entrypoint.sh /entrypoint.sh
ADD znc.conf.default /znc.conf.default

VOLUME /znc-data

EXPOSE 6667
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]