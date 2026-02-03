# SQL_Project_Analysis
## Overview
My first SQL project focused on analyzing the performance of a cryptocurrency investment portfolio. I chose SQL to apply the concepts I had learned to real-world data sets, strengthening my practical skills and overall understanding. 

Using historical daily price data for Bitcoin (BTC), Ethereum (ETH), Solana (SOL), and XRP, I was able to evaluate the portfolio's returns, volatility, cumulative growth, and risk-adjusted performance.

## Dataset (Online)
- Source: Investing.com
- Frequency: Daily
- Period: 1 January 2021 – 31 December 2024

     (Captures multiple market conditions, including bull, bear, and consolidation phases)
  
- Assets: BTC, ETH, SOL, XRP

## Tools Used
- SQL (window functions, CTEs, aggregations)
- SQLite / MySQL
- Excel (data cleaning)
- Power BI (visualization)

## Key Analysis
- Daily returns using SQL window functions
- Annualized volatility (365-day assumption)
- Portfolio-level weighted returns
- Cumulative portfolio growth      
- Sharpe Ratio for risk-adjusted performance (

## Portfolio Allocation (Monthly DCA)
- Bitcoin (BTC): 40%
- Ethereum (ETH): 30%
- Solana (SOL): 20%
- XRP: 10%

## Key Insights 
- BTC provided the lowest volatility among selected assets
- SOL delivered higher returns but significantly higher risk
- Portfolio diversification reduced overall volatility compared to individual assets

## How to Run the Code
1. Import CSV files into SQL database
2. Run SQL scripts in order (01 → 06)
3. Connect Power BI to database for visualization
