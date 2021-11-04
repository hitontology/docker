DB.DBA.XML_SET_NS_DECL ('hito', 'http://hitontology.eu/ontology/', 2);
DB.DBA.XML_SET_NS_DECL ('dbr', 'http://dbpedia.org/resource/', 2);

--ld_dir ('/rdf', '*.ttl', 'http://hitontology.eu/ontology');
--ld_dir ('/rdf', 'dbpedia.nt', 'http://dbpedia.org');
--exec('checkpoint');
--WAIT_FOR_CHILDREN;
