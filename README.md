# SQL_Project_Analysis
## Overview
This project analyzes the performance of a cryptocurrency investment portfolio using SQL.
Historical daily price data for Bitcoin (BTC), Ethereum (ETH), Solana (SOL), and XRP was used to evaluate returns, volatility, cumulative growth, and risk-adjusted performance.

## Dataset
- Source: Yahoo Finance
- Frequency: Daily
- Period: January 2022 – December 2024
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
- Sharpe Ratio for risk-adjusted performance

## Portfolio Allocation
- Bitcoin (BTC): 40%
- Ethereum (ETH): 30%
- Solana (SOL): 20%
- XRP: 10%

## Key Insights
- BTC provided the lowest volatility among selected assets
- SOL delivered higher returns but significantly higher risk
- Portfolio diversification reduced overall volatility compared to individual assets

## How to Run
1. Import CSV files into SQL database
2. Run SQL scripts in order (01 → 06)
3. Connect Power BI to database for visualization
