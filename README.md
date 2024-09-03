![01 N8N Project Postgres Sales Hotmart crop](https://github.com/user-attachments/assets/f3ec8d39-95cc-4193-85c1-81d6aa7df5a3)
# N8N Automation - Hotmart Sales Archiving in Postgres
This project was created to gather new relevant Hotmart sales data using its API. I automated the process with N8N and created Postgres relational tables to organize and store the data efficiently.

## Files description
- [offers_hotmart.sql](https://github.com/joviprata/N8N-hotmart-to-postgres/blob/main/offers_hotmart.sql)<br/>
This table in Postgres gathers information from the purchase offers. The producer name and product name can be used as filters for dashboards, as to display only data from specific products or certain producers if the dashboards were ever to be replicated for more than one digital market expert. The offer code can also be used to determine which campaign is responsible for the sales of the products, noting that different campaigns may have different offer codes but sell the same product.
- [sales_hotmart.sql](https://github.com/joviprata/N8N-hotmart-to-postgres/blob/main/sales_hotmart.sql)<br/>
This table in Postgres gathers information from the sales. A date filter and a currency filter could be used for dashboards presentation, as well as producer name, product name and offer code name, if a materialized view should be created joining data from this table and the offers table using IDs. There's also relevant tracking data from the buyer such as UTM parameters and address, and contact information like e-mail, helpful for reminding customers of purchases that are about to expire.<br/>
It's possible to see a couple custom commissions columns, that are created through conditional data extraction with a JavaScript code at the beginning of the N8N automation. There's also unique transaction code constraint and a foreign key referencing the ID found in the offers table.
