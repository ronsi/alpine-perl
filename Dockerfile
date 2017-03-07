FROM scottw/alpine-perl:latest
MAINTAINER  Scott Wiersdorf

RUN ["apk", "add", "--update", "openssl", "openssl-dev"]
RUN ["cpanm", "Data::Dumper", "Text::CSV_XS", "Config::Natural", "JSON::Parse", "JSON::Create", "Date::Parse", "REST::Client" ]

#
# to build the base image (Dockerfile in build dir):
# docker build -t alpine-perl:latest ./build
# 
# to push the image to dockerhub:
# docker tag alpine-perl:latest ronsi/alpine-perl:latest
# docker login
# docker push ronsi/alpine-perl:latest
#
# to build the import-perl scontainer
# docker build -t import-perl:latest .


ENTRYPOINT [ "perl" ]
