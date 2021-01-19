FROM meaningfy/rdf-validator-api:latest

ENV RDF_VALIDATOR_SHACL_SHAPES_LOCATION=/usr/src/shacl-shapes
ENV RDF_VALIDATOR_API_PORT=10001

COPY resources/lam-skos-ap.ttl ${RDF_VALIDATOR_SHACL_SHAPES_LOCATION}/
