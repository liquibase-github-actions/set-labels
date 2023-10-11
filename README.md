# Liquibase Set Labels Action
Official GitHub Action to run Liquibase Set Labels in your GitHub Action Workflow. For more information on how set labels works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Set Labels
[PRO]
Bulk set labels in the changelog file
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/set-labels@v4.24.0
  with:
    # The root changelog file
    # string
    # Required
    changelogFile: ""

    # New label values
    # string
    # Required
    setAs: ""

    # The author of the changeset to modify
    # string
    # Optional
    changesetAuthor: ""

    # The id of the changeset to modify
    # string
    # Optional
    changesetId: ""

    # The changeset path
    # string
    # Optional
    changesetPath: ""

    # Changeset contexts to match
    # string
    # Optional
    contextFilter: ""

    # The database to filter by
    # string
    # Optional
    dbms: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Replace the labels if true
    # bool
    # Optional
    forceReplace: ""

    # Changeset labels to match
    # string
    # Optional
    labelFilter: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # The JDBC database connection URL
    # string
    # Optional
    url: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase set labels action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/set-labels@v4.24.0
    with:
      changelogFile: ""
      setAs: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
