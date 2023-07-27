# Mojo - Jaffle Shop
This is my first dbt project based on a free tutorial by dbt.

## Project info

### Warehouse: 
Google BigQuery
### Project: 
mojo-dbt-demo

### Data Sources
Public dataset by Google 

- database name: dbt-tutorial

- schema (datasets): 

    - jaffle_shop 
    - stripe

```
select * from `dbt-tutorial.jaffle_shop.customers`;
select * from `dbt-tutorial.jaffle_shop.orders`;
select * from `dbt-tutorial.stripe.payment`;
```

### dbt default readme docs

Try running the following commands:

- dbt run
- dbt test

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
