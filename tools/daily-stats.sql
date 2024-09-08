#!/usr/bin/env -S duckdb -batch -no-stdin -init

CREATE OR REPLACE MACRO unpivot_stats(path) AS TABLE
UNPIVOT (SELECT regexp_extract(path, '([^/]+)/[^/]+\.json$', 1) AS repository
              , make_timestamp(time * 1e6 :: BIGINT) AS datetime
              , * EXCLUDE time
           FROM read_json_auto(path, union_by_name = true))
     ON COLUMNS(* EXCLUDE (repository, datetime))
   INTO NAME site VALUE plugins;


CREATE OR REPLACE TABLE stats AS
SELECT *
  FROM unpivot_stats('data/stats/awesome-neovim/*.json')
 UNION
SELECT *
  FROM unpivot_stats('data/stats/nixpkgs/*.json')
 UNION
SELECT *
  FROM unpivot_stats('data/stats/extra/*.json');


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
