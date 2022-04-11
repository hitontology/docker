update DB.DBA.HTTP_PATH set HP_OPTIONS = serialize(vector('browse_sheet', '', 'noinherit', 'yes', 'cors', '*', 'cors_restricted', 0))  where HP_LPATH = '/sparql';
DB.DBA.XML_SET_NS_DECL ('hito', 'http://hitontology.eu/ontology/', 2);
DB.DBA.XML_SET_NS_DECL ('bb', 'http://snik.eu/ontology/bb/', 2);
DB.DBA.XML_SET_NS_DECL ('dbr', 'http://dbpedia.org/resource/', 2);
