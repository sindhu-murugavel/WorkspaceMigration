//command to export users and groups - Complete
export DATABRICKS_HOST=#########
export DATABRICKS_TOKEN=########
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=users,groups \
    -listing=users,groups \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra


//command to export workspace configs - Complete
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=workspace \
    -listing=workspace \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra



//command to export notebooks - Complete - had to manually remove notebooks created by users who are no longer in Databricks user list
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=notebooks \
    -listing=notebooks \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra


//command to export access  - Completed as part of notebooks automatically
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=access \
    -listing=access \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra


//command to export storage - Completed as part of notebooks automatically
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=storage \
    -listing=storage \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra


//command to export compute - Complete
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=compute \
    -listing=compute \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra


//command to export jobs - Complete almost
export DATABRICKS_HOST=https://dbc-036d5b6e-7140.cloud.databricks.com/
export DATABRICKS_TOKEN=dapi4bf92c12079949c4fb7761e0291736a0
echo $DATABRICKS_HOST
echo $DATABRICKS_TOKEN
./terraform-provider-databricks_v1.13.0 exporter -skip-interactive \
    -services=jobs \
    -listing=jobs \
    -debug \
    -directory /Users/sindhu.murugavel/MyProjects/EzraMigration/newterra
