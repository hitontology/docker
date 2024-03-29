log_message('Setup: Activate CORS');
update DB.DBA.HTTP_PATH set HP_OPTIONS = serialize(vector('browse_sheet', '', 'noinherit', 'yes', 'cors', '*', 'cors_restricted', 0))  where HP_LPATH = '/sparql';
log_message('Setup: Declare namespaces');
DB.DBA.XML_SET_NS_DECL('hito', 'http://hitontology.eu/ontology/', 2);
DB.DBA.XML_SET_NS_DECL('bb', 'http://snik.eu/ontology/bb/', 2);
DB.DBA.XML_SET_NS_DECL('dbr', 'http://dbpedia.org/resource/', 2);
DB.DBA.XML_SET_NS_DECL('gist', ' https://ontologies.semanticarts.com/gist/', 2);
DB.DBA.XML_SET_NS_DECL('ov', 'http://open.vocab.org/terms/', 2);
DB.DBA.XML_SET_NS_DECL('dbo', 'http://dbpedia.org/ontology/', 2);
DB.DBA.XML_SET_NS_DECL('yago', 'http://dbpedia.org/class/yago/', 2);
DB.DBA.XML_SET_NS_DECL('doap', 'http://usefulinc.com/ns/doap#', 2);
DB.DBA.XML_SET_NS_DECL('skos', 'http://www.w3.org/2004/02/skos/core#', 2);
DB.DBA.XML_SET_NS_DECL('swo', 'http://www.ebi.ac.uk/swo/', 2);
DB.DBA.XML_SET_NS_DECL('swol', 'http://www.ebi.ac.uk/swo/license/', 2);
DB.DBA.XML_SET_NS_DECL('bibo', 'http://purl.org/ontology/bibo/', 2);
DB.DBA.XML_SET_NS_DECL('dct', 'http://purl.org/dc/terms/', 2);
DB.DBA.XML_SET_NS_DECL('dce', 'http://purl.org/dc/elements/1.1/', 2);
DB.DBA.XML_SET_NS_DECL('vann', 'http://purl.org/vocab/vann/', 2);
DB.DBA.XML_SET_NS_DECL('schema', 'http://schema.org/', 2);
DB.DBA.XML_SET_NS_DECL('foaf', 'http://xmlns.com/foaf/0.1/', 2);
log_message('Setup: Load data from .ttl files');
-- x.ttl.graph file will override graph parameter for file x.ttl, see https://github.com/openlink/virtuoso-opensource/issues/1075
ld_dir_all ('/rdf/', '*.ttl', 'http://hitontology.eu/ontology');
rdf_loader_run();
log_message('Setup: Finished');
