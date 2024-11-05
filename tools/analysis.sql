-- Run `duckdb -init tools/analysls.sql` and then you can analyze
-- `data/plugins/awesome-neovim.json`.

DROP TABLE IF EXISTS plugins;
CREATE TABLE plugins AS
SELECT site
     , owner
     , repo
     , description
     , 'https://' || site || '/' || owner || '/' || repo AS url
     , homepage
     , license
     , date
     , rev
     , sha256
  FROM read_json( 'data/plugins/awesome-neovim.json'
                , columns = { site: 'VARCHAR'
                            , owner: 'VARCHAR'
                            , repo: 'VARCHAR'
                            , description: 'VARCHAR'
                            , homepage: 'VARCHAR'
                            , license: 'VARCHAR'
                            , date: 'DATE'
                            , rev: 'VARCHAR'
                            , sha256: 'VARCHAR'
                            });
