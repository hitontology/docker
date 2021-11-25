# It may make sense to integrate the ontology repository in this one in the future.
FROM alpine
RUN apk add raptor2
RUN wget https://github.com/hitontology/ontology/archive/refs/heads/master.zip \\
	&& unzip master.zip \\
	&& rm master.zip \\
	&& mv ontology-master ontology
	&&  
WORKDIR /ontology
RUN ./combine
