FROM ubuntu
RUN apt-get update
WORKDIR /mynewapp
ADD . /mynewapp
CMD ["echo","Hello"]
