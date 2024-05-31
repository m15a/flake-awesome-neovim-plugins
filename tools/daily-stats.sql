#!/usr/bin/env -S duckdb -batch -no-stdin -init

CREATE OR REPLACE TABLE stats
( repository VARCHAR
, datetime TIMESTAMP
, site VARCHAR 
, plugins INT
);

CREATE OR REPLACE MACRO unpivot_stats(src_name, src_path) AS TABLE
UNPIVOT (SELECT src_name AS repository
              , make_timestamp(time * 1e6 :: BIGINT) AS datetime
              , * EXCLUDE time
           FROM read_json_auto(src_path, union_by_name = true))
     ON COLUMNS(* EXCLUDE (repository, datetime))
   INTO NAME site VALUE plugins;

INSERT INTO stats
SELECT *
  FROM unpivot_stats('awesome-neovim', 'data/stats/awesome-neovim/*.json')
 UNION
SELECT *
  FROM unpivot_stats('nixpkgs', 'data/stats/nixpkgs/*.json')
 UNION
SELECT *
  FROM unpivot_stats('extra', 'data/stats/extra/*.json');

CREATE OR REPLACE TABLE daily AS
SELECT date_trunc('day', datetime) AS "date"
     , repository
     , site
     , max(plugins) AS plugins
  FROM stats
 GROUP BY date, repository, site
 ORDER BY date, repository, site;

COPY daily TO 'data/stats/view/daily.csv'
(HEADER, DELIMITER ',');
