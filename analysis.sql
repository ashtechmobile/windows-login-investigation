-- Run in the SQLite CLI from this repository's directory.
-- sqlite3 :memory:
-- .import --csv sample-events.csv logon_events
-- .headers on
-- .mode column
-- .read analysis.sql

-- Count failed logons by source.
SELECT source, COUNT(*) AS failed_logons
FROM logon_events
WHERE account = 'finance01' AND event_id = '4625'
GROUP BY source
ORDER BY failed_logons DESC, source;

-- Find the successful logon at 10:04.
SELECT time AS logon_time, account, source, event_id
FROM logon_events
WHERE account = 'finance01'
  AND event_id = '4624'
  AND time = '10:04';
