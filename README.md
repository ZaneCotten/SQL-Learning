# SQL Learning Hub

A simple, organized place for my SQL practice, notes, and katas (primarily **PostgreSQL**; some exercises may include SQLite variants).

## Goals
- Build solid SQL fundamentals (queries, joins, grouping, window functions).
- Practice on real schemas (e.g., DVD Rental) and challenge sites.
- Keep a tidy, reviewable history of solutions with short explanations.

## Repo Structure
<pre>
sql-learning/
├── README.md
├── katas/
│ └── codewars/
│   └── challenge_name/
│     └── challenge_README.md
│     └── solution.sql
├── playground/ # Scratch queries, experiments (future)
│ └── scratch.sql
└── resources.md # Links to courses, docs, tools
</pre>


## Dialects
- **Primary:** PostgreSQL (Codewars uses Postgres).
- **Secondary:** SQLite for portability comparisons.

> Tip: If a kata specifies Postgres, you can use `::type` casts, `DATE_TRUNC`, window functions, etc.

## Running Queries Locally (PostgreSQL)
```bash
# Run a file
psql -d <your_database> -f path/to/solution.sql

# Or open interactive shell
psql -d <your_database>
