CREATE DATABASE Finance_Project;
CREATE TABLE survey_data (
    gender VARCHAR(10),
    age INT,
    investment_avenues VARCHAR(10),
    mutual_funds INT,
    equity_market INT,
    debentures INT,
    government_bonds INT,
    fixed_deposits INT,
    ppf INT,
    gold INT,
    stock_marktet INT,
    factor VARCHAR(50),
    objective VARCHAR(50),
    purpose VARCHAR(50),
    duration VARCHAR(30),
    invest_monitor VARCHAR(20),
    expect VARCHAR(20),
    avenue VARCHAR(50),
    savings_objective VARCHAR(100),
    reason_equity VARCHAR(100),
    reason_mutual VARCHAR(100),
    reason_bonds VARCHAR(100),
    reason_fd VARCHAR(100),
    source VARCHAR(50)
);
CREATE TABLE finance_data (
    Date DATE,
    Ticker VARCHAR(10),
    Open_Price FLOAT,
    High_Price FLOAT,
    Low_Price FLOAT,
    Close_Price FLOAT,
    Volume BIGINT
);
SET GLOBAL local_infile = 1;
SELECT COUNT(*) AS total_responses
FROM finance_data;
SELECT
    gender,
    COUNT(*) AS count
FROM finance_data
GROUP BY gender;
SELECT
    age,
    COUNT(*) AS count
FROM finance_data
GROUP BY age
ORDER BY age;
SELECT
    SUM(Mutual_Funds) AS mutual_funds_users,
    SUM(Equity_Market) AS equity_users,
    SUM(Fixed_Deposits) AS fd_users,
    SUM(Government_Bonds) AS bonds_users,
    SUM(PPF) AS ppf_users,
    SUM(Gold) AS gold_users
FROM finance_data;
SELECT
    gender,
    SUM(Mutual_Funds) AS mutual_funds,
    SUM(Equity_Market) AS equity,
    SUM(Fixed_Deposits) AS fixed_deposits
FROM finance_data
GROUP BY gender;
SELECT
    `What are your savings objectives?` AS savings_objective,
    COUNT(*) AS total_people
FROM finance_data
GROUP BY `What are your savings objectives?`
ORDER BY total_people DESC;
SELECT
    age,
    `What are your savings objectives?` AS savings_objective,
    COUNT(*) AS count
FROM finance_data
GROUP BY age, `What are your savings objectives?`
ORDER BY age;
SELECT
    Reason_FD,
    COUNT(*) AS count
FROM finance_data
WHERE Fixed_Deposits = 1
GROUP BY Reason_FD
ORDER BY count DESC;
SELECT
    Reason_Equity,
    COUNT(*) AS count
FROM finance_data
WHERE Equity_Market = 1
GROUP BY Reason_Equity
ORDER BY count DESC;
SELECT
    Reason_Mutual,
    COUNT(*) AS count
FROM finance_data
WHERE Mutual_Funds = 1
GROUP BY Reason_Mutual
ORDER BY count DESC;
SELECT
    Invest_Monitor,
    COUNT(*) AS count
FROM finance_data
GROUP BY Invest_Monitor;
SELECT
    Expect,
    COUNT(*) AS count
FROM finance_data
GROUP BY Expect;
SELECT
    Duration,
    COUNT(*) AS total_people
FROM finance_data
GROUP BY Duration
ORDER BY total_people DESC;
SELECT
    SUM(Mutual_Funds) AS mutual_funds,
    SUM(Equity_Market) AS equity,
    SUM(Fixed_Deposits) AS fixed_deposits,
    SUM(Gold) AS gold
FROM finance_data
WHERE age < 30;
SELECT
    Source,
    COUNT(*) AS count
FROM finance_data
GROUP BY Source
ORDER BY count DESC;
ALTER TABLE finance_data
CHANGE `What are your savings objectives?` savings_objective TEXT;
















