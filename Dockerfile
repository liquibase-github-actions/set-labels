# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.29.2
COPY set_labels.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
