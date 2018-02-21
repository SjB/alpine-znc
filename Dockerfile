FROM alpine:3.3
MAINTAINER Nick Van Wiggeren "nick@facepwn.com"

RUN apk --update add znc znc-modperl znc-modtcl znc-extra ca-certificates

ADD znc.conf.default /znc.conf.default
ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

VOLUME /znc-data

EXPOSE 6667
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
