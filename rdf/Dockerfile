# It may make sense to integrate the ontology repository into this repository in the future.
FROM alpine
RUN apk add raptor2
WORKDIR /rdf
ENV HITO_COMBINE_FILENAME=/rdf/hito.nt
WORKDIR /tmp/repo
RUN wget https://github.com/hitontology/ontology/archive/refs/heads/master.zip \
	&& unzip master.zip \
	&& rm master.zip \
	&& mv ontology-master/* . \
	&& ./combine \
        && rm ./* -rf
WORKDIR /rdf
