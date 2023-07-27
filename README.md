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

## Steps for adding sources

1. Add source yml files in each of the staging subfolders based on each schema/dataset
2. Add checks for source freshness

## Testing

### A. Testing models
1. Generic tests
    - models/staging/jaffle_shop/stg_jaffle_shop.yml
2. Singular test
    - tests/assert_positive_total_for_payments.sql

#### dbt model Testing commands

- Execute `dbt test` to run all generic and singular tests in your project.
- Execute `dbt test --select test_type:generic` to run only generic tests in your project.
- Execute `dbt test --select test_type:singular` to run only singular tests in your project.

### B. Testing sources
Added testing parameters to the following file: `models/staging/jaffle_shop/src_jaffle_shop.yml` which has `source name = 'jaffle_shop'`

#### dbt source Testing command
Execute the test for the source name 'jaffle_shop' using `dbt test --select source:jaffle_shop`

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
