# SQL-Queries-for-Patent-Search-Manual
SQL Queries for Patent Search - By entering patent data manually


# Problem Statement: #
The project aims to develop a comprehensive patent search system using SQL, catering to the diverse information retrieval needs of stakeholders in the fields of research, innovation, intellectual property management, legal compliance, and market intelligence. The system must be capable of:
1. Creating a structured relational database to store patent data efficiently.
2. Designing an optimized table schema with appropriate attributes to capture key patent information.
3. Implementing SQL queries to retrieve patent records based on various search criteria, including patent number, title keywords, inventor name, patent classification, assignee name, abstract keywords, and filing date.
4. Demonstrating the effectiveness and usability of the patent search system through realistic query scenarios and sample data.
5. Providing insights into the importance of patent search in contemporary technological trends and its relevance across different industry domains.

Overall, the project seeks to empower users with a powerful and intuitive SQL-based patent search solution, facilitating informed decision-making, fostering innovation, and promoting intellectual property management in today's knowledge-driven economy.

# Recent Trends: #
In today's rapidly evolving technological landscape, intellectual property, particularly patents, plays a crucial role in innovation and business competitiveness. The ability to efficiently search, analyze, and leverage patent data is paramount for various stakeholders, including researchers, inventors, entrepreneurs, legal professionals, and corporate entities. Here are key reasons why the topic of patent search using SQL is significant:
1. Innovation and Research: Patent databases serve as valuable repositories of technological advancements and innovations. Researchers rely on patent search tools to explore prior art, identify emerging trends, and conduct comprehensive literature reviews for their studies.
2. Intellectual Property Management: Companies and organizations need robust patent search capabilities to manage their intellectual property portfolios effectively. SQL-based patent databases enable efficient cataloging, tracking, and analysis of patent assets, facilitating strategic decision-making and patent portfolio optimization.
3. Legal and Regulatory Compliance: Legal professionals and patent attorneys require access to reliable patent databases to perform patentability searches, infringement analyses, and freedom-to-operate assessments. SQL-powered patent search systems offer the speed and flexibility needed to navigate complex legal landscapes and ensure compliance with intellectual property laws and regulations.
4. Market Intelligence and Competitive Analysis: Businesses leverage patent search tools to gain insights into competitor activities, industry trends, and market opportunities. SQL-based patent databases enable sophisticated data mining and analytics, empowering companies to make informed strategic decisions and stay ahead in competitive markets.
5. Technology Transfer and Licensing: Universities, research institutions, and technology transfer offices utilize patent databases to identify potential licensing opportunities, negotiate technology transfer agreements, and foster collaborations between academia and industry. SQL-driven patent search systems streamline the technology transfer process and facilitate knowledge dissemination.

# Implementation #
"Patent Search using SQL," aims to demonstrate the utilization of a SQL database for storing and querying patent-related information. Let's break down the project into its components:

1. **Database Creation**: The project starts by creating a new database named "patent." This is the container where all the patent-related data will be stored.

```sql
CREATE DATABASE patent;
```

2. **Database Selection**: After creating the database, the code selects it to ensure that all subsequent operations are performed within this database.

```sql
USE patent;
```

3. **Table Creation**: Within the "patent" database, a table named "Patents" is created. This table is designed to hold patent information, such as patent number, title, inventor name, patent class, filing date, assignee name, and abstract.

```sql
CREATE TABLE Patents (
    patent_number VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255),
    inventor_name VARCHAR(255),
    patent_class VARCHAR(255),
    filing_date DATE,
    assignee_name VARCHAR(255),
    abstract TEXT
);
```

4. **Data Insertion**: Sample patent data is inserted into the "Patents" table using the INSERT statement. Each row represents a single patent with its associated information.

```sql
INSERT INTO Patents (patent_number, title, inventor_name, patent_class, filing_date, assignee_name, abstract)
VALUES 
    ( ... ),
    ( ... ),
    ...
```

5. **Search Queries**: Several SQL SELECT queries are provided to demonstrate how to retrieve specific information from the database based on different search criteria. These queries include searching by patent number, title keywords, inventor name, patent classification, assignee name, abstract keywords, and filing date.

```sql
SELECT * FROM Patents WHERE patent_number = 'US2015269825A1';
SELECT * FROM Patents WHERE title LIKE '%Glucose management%';
...
```

Each search query targets a specific aspect of the patent data and returns relevant results.

In summary, the project showcases the creation of a SQL database to store patent information and provides sample queries to retrieve relevant patent data based on various search criteria. This demonstrates how SQL can be used as a powerful tool for managing and querying patent databases efficiently.
