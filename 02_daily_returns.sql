-- Understanding daily crypto returns
-- This helps track whether the price goes up or down each day and shows the percentage profit or loss
-- The LAG() function is used to get yesterday's price so we can compare it with today's price
-- This allows us to calculate daily return (%) and better understand short-term performance


SELECT 
      date, 
      symbol , 
	  close_price,
	  ROUND( (close_price/LAG(close_price) OVER (Partition by symbol Order by date) - 1) * 100, 2) AS daily_return_pct
FROM crypto_prices;


-- If you wamt speciic cryptocurrency just at WHERE function at the bottom of the code (BTC)

SELECT 
      date, 
      symbol , 
	  close_price,
	  ROUND( (close_price/LAG(close_price) OVER (Partition by symbol order by date) - 1) * 100, 2) AS daily_return_pct
FROM crypto_prices
WHERE symbol = "BTC";      






