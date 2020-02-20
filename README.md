# dbt | tap-github

This [dbt](https://github.com/fishtown-analytics/dbt) package contains data models for [tap-github](https://github.com/singer-io/tap-github).

Two variables are required:
* schema: the schema where the raw github tables (result of `tap-github`) are located

**dbt_project.yml**
```
... ...

models:
  tap_github:

    ... ...

    vars:
      schema:             'tap_github'        # the schema where the raw github tables are located
```
