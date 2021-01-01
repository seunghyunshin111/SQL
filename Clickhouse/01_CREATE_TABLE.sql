-- CREATE TABLE

CREATE TABLE ActionLog
(
  'date' Date,
  'id' int,
  'values' Array(String)
  ...
) ENGINE = MergeTree()
PARTITION BY 'date'
ORDER BY 'id'
