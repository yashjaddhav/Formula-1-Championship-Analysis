Formula 1 Championship Analysis

Introduction : This project focuses on analyzing historical Formula One championship data (1950–2024) using SQL. The dataset includes information about drivers, constructors, engines, and season performance.The goal is to demonstrate how relational databases and SQL queries can be used to extract meaningful insights from sports data, such as dominance trends, championship performance, and historical patterns.

Objectives:
1) Perform data analysis using SQL queries.
2) Identify top-performing drivers, constructors, and engines.
3) Calculate performance metrics (win percentage, dominance score, etc.)
4) Apply joins, aggregations, and relational database concepts.

Tech Stack:
MySQL – Database management system
SQL – Data querying and analysis
MySQL Workbench – Database design and execution

Database Source: Kaggle

Tables used in the project:
Drivers
Constructors
Engines
Seasons
Driver championship
Constructor championship

Key Relationships:
1) drivers ↔ driver_championship
2) constructors ↔ driver_championship
3) engines ↔ driver_championship
4) seasons ↔ driver_championship
   
Key SQL Analyses
1) Drivers with most championships.
2) Constructors with most championships.
3) Driver win percentage per season.
4) Average age of champions by decade.
5) Most successful engine manufacturers.
6) Driver dominance score (wins + poles + podiums)

Key Insights:
1) Lewis Hamilton and Michael Schumacher dominate F1 history in championships.
2) Ferrari, Mercedes, and McLaren are the most successful constructors.
3) Modern F1 seasons have more races, increasing total points.
4) Engine manufacturers like Mercedes and Ferrari show long-term dominance.
5) Driver performance varies significantly across eras due to rule changes.



This project demonstrates how SQL can be used for real-world sports analytics. By structuring Formula One data in a relational database, meaningful insights about drivers, constructors, and historical trends can be extracted efficiently.
