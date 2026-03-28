# Data Engineering Project - Personal Finances With Airflow, Docker, Great Expectations and Metabase

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/static/images/article2.74d541386bbf.png)

## Metadata
- Author: [[Elias Benaddou Idrissi]]
- Full Title: Data Engineering Project - Personal Finances With Airflow, Docker, Great Expectations and Metabase
- Category: #articles
- Summary: TLDR: A dockerised Airflow repository to automate API calls to your bank account (only Monzo currently supported) to store transactions in a Postgres database, check data quality with Great Expectations and visualise your data on Metabase. DAGs to pull transactions and store to a database, move money between Monzo Pots for automated budgetting and to create custom push notifications to your Monzo app.
About    Finding data to use in a project can be difficult and with all the tools to choose from it can become overwhelming.
- URL: https://eliasbenaddouidrissi.dev/posts/data_engineering_project_monzo/

## Full Document
[[Full Document Contents/Articles/Data Engineering Project - Personal Finances With Airflow, Docker, Great Expectations and Metabase.md|See full document content →]]

## Highlights
- You will be asked to login via the link in your email sent by Monzo and you will be taken to the API Playground. Before being able to use it, you will need to approve the notification on your Monzo app to give access to the developer portal to your account.
  In the top navigation bar, go to “Clients” and select “New OAuth Client”. Give it a name and description, set the “Redirect URL” to “http://127.0.0.1/monzo” and set the “Confidentiality” field to “Confidential”. You’ll now be able to copy to the Client ID, Client Secret and Redirect URL into your *.env* file. ([View Highlight](https://read.readwise.io/read/01gwpmm7nag92srr235pt8g05m))
    - Note: Perhaps I can use this on the dashboard
