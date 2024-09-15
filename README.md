![N8N Project Postgres Sales Hotmart](https://github.com/user-attachments/assets/c28a2538-5faf-48d3-9274-032518464c7b)

# N8N Automation - Hotmart Sales Archiving in Postgres
This project was created to gather new relevant Hotmart sales data using its API. I automated the process with N8N and created Postgres relational tables to organize and store the data efficiently.

## Files description
- [N8N Postgres Hotmart Sales.json](https://github.com/joviprata/N8N-hotmart-to-postgres/blob/main/N8N%20Postgres%20Hotmart%20Sales.json)<br/>
The JSON file for the N8N Project. It starts with a Hotmart Webhook trigger. A Hotmart API call retrieves UTM parameters information that isn't provided in the Webhook by default. It searches for the offer by code, considering that a product may have multiple codes. If the offer code is found in the offers table, a sales record is created with the offer ID. If not, a new offer record is added in the offers table, followed by a sales record with the offer ID added in the sales table.
- [offers_hotmart.sql](https://github.com/joviprata/N8N-hotmart-to-postgres/blob/main/offers_hotmart.sql)<br/>
This table in Postgres gathers information from the purchase offers. The producer name and product name can be used as filters for dashboards, as to display only data from specific products or certain producers if the dashboards were ever to be replicated for more than one digital market expert. The offer code can also be used to determine which campaign is responsible for the sales of the products, noting that different campaigns may have different offer codes but sell the same product.
- [sales_hotmart.sql](https://github.com/joviprata/N8N-hotmart-to-postgres/blob/main/sales_hotmart.sql)<br/>
This table in Postgres gathers information from the sales. A date filter and a currency filter could be used for dashboards presentation, as well as producer name, product name and offer code name, if a materialized view should be created joining data from this table and the offers table using IDs. There's also relevant tracking data from the buyer such as UTM parameters and address, and contact information like e-mail, helpful for reminding customers of purchases that are about to expire.<br/>
It's possible to see a couple custom commissions columns, that are created through conditional data extraction with a JavaScript code at the beginning of the N8N automation. There's also unique transaction code constraint and a foreign key referencing the ID found in the offers table.
