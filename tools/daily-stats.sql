#!/usr/bin/env -S duckdb -batch -no-stdin -init

CREATE TABLE stats
( source VARCHAR
, datetime TIMESTAMP
, time INT
, site VARCHAR 
, plugins INT
);

INSERT INTO stats
(UNPIVOT (SELECT 'awesome-neovim' AS source
               , make_timestamp(time * 1e6 :: INT) AS datetime
               , *
            FROM 'data/stats/awesome-neovim/*.json')
      ON COLUMNS(* EXCLUDE (source, time, datetime))
    INTO NAME site VALUE plugins)
UNION
(UNPIVOT (SELECT 'nixpkgs' AS source
               , make_timestamp(time * 1e6 :: INT) AS datetime
               , *
            FROM 'data/stats/nixpkgs/*.json')
      ON COLUMNS(* EXCLUDE (source, time, datetime))
    INTO NAME site VALUE plugins)
UNION
(UNPIVOT (SELECT 'extra' AS source
               , make_timestamp(time * 1e6 :: INT) AS datetime
               , *
            FROM 'data/stats/extra/*.json')
      ON COLUMNS(* EXCLUDE (source, time, datetime))
    INTO NAME site VALUE plugins);


CREATE TABLE daily AS
SELECT date_trunc('day', datetime) AS "date"
     , source
     , site
     , max(plugins) AS plugins
  FROM stats
 GROUP BY source, site, date
 ORDER BY date, source, site;

COPY daily TO 'data/stats/view/daily.csv'
(HEADER, DELIMITER ',');
