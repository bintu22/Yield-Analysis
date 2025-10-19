# Yield Analysis
# Overview
The goal of this project was to analyze Bid Data and Session Data to share insights with a sample publisher worldanimalfoundation.org to optimize their Yield Performance.

# North Star Metrics
* **Revenue:** absolute earnings. This is used to understand trends in how much the publisher side makes by dimensions, such as bidder, country, and device.
* **CPM:** Cost per 1,000 impressions. This metric is useful for understanding how much buyers are paying for 1,000 impressions so we can set adequate floor prices.
* **Impressions:** an impression is counted when an ad is servied and begins to render on a user's device. Tracking this metric allows us to understand the quantity of monetization units sold.

<img width="2146" height="700" alt="image" src="https://github.com/user-attachments/assets/5632aac7-9b61-453e-a552-0d0f3e809cb9" />
<img width="556" height="348" alt="image" src="https://github.com/user-attachments/assets/79faa6e1-3dda-418b-8bae-2cdf30f161c6" />
<br>
<img width="389" height="342" alt="image" src="https://github.com/user-attachments/assets/44305aa1-eb48-4b47-b4d7-24f8c0b44a4c" />

<img width="2476" height="970" alt="image" src="https://github.com/user-attachments/assets/647e3190-0432-4a0a-af02-66126c4e6d87" />
<img width="2162" height="1122" alt="image" src="https://github.com/user-attachments/assets/9c1dd8b5-5d5b-4268-b5dd-f94163a1765b" />

<img width="2168" height="420" alt="image" src="https://github.com/user-attachments/assets/8217b5b0-9947-4133-b625-c779c1856de4" />

# Future Analysis
Additional data points that would help make this data set much more usable for a deeper analysis:
* **Fill Rate:** Impressions/Bid Requests  This metric indicates how effectively we were able to monetize the inventory. A low fill rate indicates a missed revenue opportunity. 
* **CTR:** (Total Clicks/Total Impressions) *100  This metric is helpful in evaluating the engagement and quality of the placement id.
* **Viewability Rate:** (Total Measured Viewable Ad Impressions / Total Measured Ad Impressions)*100 This would be helpful for understanding the quality of each placement.
* **Traffic: pageviews** = count of page load events; ad opportunities = pageviews * ad slots; user activity on the publisher/app side that creates opportunities for impressions. This is helpful for quantifying potential opportunities to reach users with ads based on audience activity.
* **Error Rate:** % of ad impressions that fail to serve correctly. Some examples of errrors are timeouts and creative issues. This would be helpful because errors result in lost revenue to the to the publisher.
* **Bidrate:** (Number of ad requests that receive at least one bid / Total number of ad requests) * 100. This metric is good for understanding demand levels. A high bid rate indicates high demand.
* **Winrate:** % of auctions won to identify if pricing floors are competitive
* **Revenue per Session / per User:** revenue/# of sessions and revenue/#unique users. These metrics are helpful for understanding how effectively each session is monetized and lifetime user value of traffic
* **User Data with Session IDs:** Merging this info with existing datasets would allow us to identify characteristics of users with high performance and optimize ad placements based on those characteristics.
* **LTV:CAC:** Lifetime Value to Customer Acquisition Cost. We could use Revenue per session from existing data as a proxy for value generated. If we could get sales & marketing spend per user from the Finance team, we could calculate CAC.
* **OS Performance Data:** This can help identify performance and revenue trends by Operating System for yield optimization.
* **Time of Day & Day of Week Data:** seasonal or hourly trends can help inform dynamic floor pricing
* **Analyze Pageview Data:** Analyzing by Pageview dimension could help us identify which pages tend to have better performing placements so we can price accordingly.
* **Conversion Data:** This data would be helpful for determining attribution if we could tie conversions back to specific sessions or users. This would allow us to calculate CPA and conversion rates to optimize ad placement and bids based based on outcomes.

Robot, TV, and unknown devices were included in the Session Data but were omitted from this analysis because their session IDs were not recorded in the Bid Data. Although they were a small portion of the overall dataset, having their Bid Data information would allow for a more thorough analysis.
