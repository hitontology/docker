FROM alpine/git
WORKDIR /usr/src/rdf
RUN git clone https://github.com/hitontology/ontology.git --branch master --single-branch --depth 1 .
# seems to only run git and nothing else, better just install git on a container with raptor2-utils installed?

FROM tenforce/virtuoso:latest


