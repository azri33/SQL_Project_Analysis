-- This analysis is further enhanced by incorporating Dollar-Cost Averaging (DCA) with a fixed contribution of RM500 per period
-- Under the DCA strategy, RM500 is invested at regular intervals, rather than deploying the full capital upfront
-- This approach mitigates the impact of short-term market volatility and reflects a disciplined, long-term investment strategy


WITH portfolio AS (
    SELECT
        date,
        SUM(
            CASE
                WHEN symbol = 'BTC' THEN daily_return * 0.4
                WHEN symbol = 'ETH' THEN daily_return * 0.3
                WHEN symbol = 'SOL' THEN daily_return * 0.2
                WHEN symbol = 'XRP' THEN daily_return * 0.1
            END
        ) AS daily_return
    FROM (
        SELECT
            date,
            symbol,
            (close_price / LAG(close_price)
                OVER (PARTITION BY symbol ORDER BY date) - 1
            ) AS daily_return
        FROM crypto_prices
    ) t
    WHERE daily_return IS NOT NULL
    GROUP BY date
)
-- Mark investments: RM10,000 at start + RM500 monthly
, invest_flag AS (
    SELECT
        date,
        daily_return,
        CASE
            WHEN ROW_NUMBER() OVER (ORDER BY date) = 1 THEN 10000
            WHEN ROW_NUMBER() OVER (
                PARTITION BY DATE_FORMAT(date, '%Y-%m')
                ORDER BY date
            ) = 1 THEN 500
            ELSE 0
        END AS invest
    FROM portfolio
)
SELECT
    date,
    ROUND(
        SUM(invest) OVER (ORDER BY date)
        *
        EXP(SUM(LN(1 + daily_return)) OVER (ORDER BY date)),
    2) AS portfolio_value_rm
FROM invest_flag
ORDER BY date;