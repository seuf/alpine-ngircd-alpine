FROM alpine:edge
RUN apk --update upgrade
RUN apk add ngircd
ENV NGIRCD_ADMIN_INFO1="Seuf"
ENV NGIRCD_ADMIN_INFO2="France, Lyon"
ENV NGIRCD_ADMIN_EMAIL="examle@foo.bar"
ENV NGIRCD_INFO="Linux and beers"
ENV OPERATOR_USER="Seuf"
ENV OPERATOR_PASSWORD="xxxxxx"
COPY ngircd.conf /etc/ngircd/ngircd.conf
USER nobody
ENTRYPOINT ngircd -n
