/* *In SQL, I opted to count deduped and unique impressions, resulting in lower impressions. This gives a more accurate view of inventory than Excel calculations, since the raw Excel data includes multiple rows per impresion (from multiple bids or repeated logs). Excel calculations are fine for high-level insights and trend tracking, but SQL should be used for more precise reporting. Overcounting impressions can also impact CPM and revenue accuracy.

**Deduped_Session:** ensures no duplicate session_ids inflate joins. Session ids can be logged more than once due to Ad refreshes, multiple bids, impressions, or events. Example: a single user session triggers 5 bid attempts for different DSPs or creative sizes
**Unique_Impressions:** counts each (impression_id, session_id) combination once */


-- cpm and impressions by session_id

WITH Deduped_Session AS (
    SELECT DISTINCT session_id, device_class, country_code
    FROM `freestar.Session Data` 
),
Unique_Impressions AS (
    -- ensure each impression/session counted only once
    SELECT DISTINCT impression_id, session_id, cpm
    FROM `freestar.Bid Data`
)
SELECT 
    b.session_id,
    COUNT(*) AS impressions,
    ROUND(AVG(b.cpm), 2) AS avg_cpm,
FROM Unique_Impressions as b
JOIN Deduped_Session as s
    ON b.session_id = s.session_id
GROUP BY b.session_id
ORDER BY impressions DESC;

-- return cpm and impressions by size for mobile (Phone) users. Sort the size from most to least impressions. 

WITH Deduped_Session AS (
    SELECT DISTINCT session_id, country_code, device_class
    FROM `freestar.Session Data` 
),
Unique_Impressions AS (
    SELECT DISTINCT impression_id, session_id, size, cpm
    FROM `freestar.Bid Data`
)
SELECT 
    b.size,
    COUNT(*) AS impressions,
    ROUND(AVG(b.cpm), 2) AS avg_cpm,
FROM Unique_Impressions b
JOIN Deduped_Session s
    ON b.session_id = s.session_id
WHERE s.device_class = 'Phone'
GROUP BY b.size
ORDER BY impressions DESC;

 -- join the Bid Data and Session Data table to return country and device by placement_id

WITH Deduped_Session AS (
    SELECT DISTINCT session_id, country_code, device_class
    FROM `freestar.Session Data` 
),
Unique_Impressions AS (
    SELECT DISTINCT impression_id, session_id, size, cpm, placement_id
    FROM `freestar.Bid Data`
)
SELECT 
   placement_id,   
    device_class,
    country_code,
   COUNT(DISTINCT impression_id) AS total_impressions
FROM Unique_Impressions b
JOIN Deduped_Session s
    ON b.session_id = s.session_id
GROUP BY 1, 2, 3
ORDER BY total_impressions DESC;
