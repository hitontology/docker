# It may make sense to integrate the ontology repository into this repository in the future.
FROM alpine
RUN apk add raptor2
WORKDIR /rdf
ARG HITO_FILE
ENV HITO_FILE=${HITO_FILE:-/rdf/hito.nt}
WORKDIR /tmp/repo
RUN wget https://github.com/hitontology/ontology/archive/refs/heads/master.zip \
	&& unzip master.zip \
	&& rm master.zip \
	&& mv ontology-master/* . \
	&& ./combine \
	&& cp license.ttl /rdf \
	&& cp dbpedia.ttl /rdf \
        && rm ./* -rf
WORKDIR /rdf
