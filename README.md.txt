# MySQL Assessment — 95 Queries

A complete answer set for a MySQL practice assignment covering **95 SQL queries** across five real-world scenarios: Banking, Railway Reservation, Employee Management, Customers & Orders, and Students. Every query was written, executed against MySQL 8.0, and verified — the results shown in the answer document are real output, not hand-typed guesses.

---

## Scenarios Covered

| # | Scenario | Questions | Topics |
|---|---|---|---|
| 1 | Banking | Q1–Q40 | WHERE/operators, ORDER BY, aggregates, GROUP BY/HAVING, JOINs, subqueries |
| 2 | Railway Reservation | Q41–Q50 | WHERE/operators, JOINs with GROUP BY, subqueries |
| 3 | Employee Management | Q51–Q65 | Department/city aggregates, sorting, top-N |
| 4 | Customers & Orders | Q66–Q80 | Customer-wise totals, HAVING, top-N spenders |
| 5 | Students | Q81–Q95 | Department-wise marks, aggregates, HAVING |

---

## Project Structure

```
My-sql-assessment/
|
|-----tables
|         |
|          ----1.All tables.png
|              2. employee.png
|              3. accounts.png
|              4. bokings.png
|              5. customer1.png
|              6. trains.png
|              7. orders.png
|              8. customers2.png
|              9. students.png
|
|-----assessment table create.sql
|-----95 queries.sql
|-----My sql assessment queries answer.pdf   //pdf ans document
|-----README.md


---


## Tables & Sample Data

| Table | Belongs to | Data status |
|---|---|---|
| `customers`, `accounts` | Banking | ✅ Sample data included |
| `trains`, `bookings` | Railway | ✅ Sample data included |
| `Employee` | Employee Management | ⚠️ Placeholder data — replace with your real assignment rows |
| `Customers2`, `Orders` | Customers & Orders | ✅ Sample data included |
| `Students` | Students | ✅ Sample data included |

> `Customers2` is used instead of `Customers` to avoid a naming clash with the Banking scenario's `customers` table in the same schema. Rename it back to `Customers` if you need it to match the assignment exactly.

---



**As a full script** (faster, runs everything at once):
1. Open a query file from `queries/` in MySQL Workbench.
2. Select all (`Ctrl+A`).
3. Run with the "Execute script" icon (`Ctrl+Shift+Enter`) — a lightning bolt with a small script icon, not the plain single bolt.
4. Each `SELECT` opens its own result tab along the bottom.

---

## Answer Document

`MySQL_Assignment_Answers.docx` contains all 95 questions, each with:
- The question text
- The exact SQL used
- A real result table pulled from actually running the query (or an "(empty result set)" / "no data" note where applicable)

---

## Updating with Your Own Data

If your actual assignment gave different sample rows (especially for `Employee`), replace the `INSERT` statements in `assignment table create.sql`, reload the schema, and re-run the queries — the structure and logic stay the same either way.

---

## Requirements

- MySQL 8.0 (or compatible, e.g. MariaDB)
- MySQL Workbench (optional, for a GUI)

---

## License

Free to use for learning and academic purposes.

---

## AUTHOR

AKASH RAJAN

---