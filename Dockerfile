FROM alpine

ADD run.sh .

ENTRYPOINT ["./run.sh"]

