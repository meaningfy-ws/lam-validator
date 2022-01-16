# Set of `curl` commands to test the `api`

## Validate File with Application Profile
change `application_profile`, `data_file` to the desired data.
```bash
curl --location --request POST 'localhost:4010/validate/ap/file' \
--form 'application_profile="<application_profile>"' \
--form 'data_file=@"<file_location>"'
```

## Validate File with Shapes
change `schema_file0` (up to `schema_file4`), `data_file` to the desired data.

```bash
curl --location --request POST 'localhost:4010/validate/shapes/file' \
--form 'data_file=@"<file_location>"' \
--form 'schema_file0=@"<shape_file0>"' \
--form 'schema_file1=@"<shape_file1>"'
```

## Validate SPARQL Endpoint with Application Profile
change `application_profile`, `sparql_endpoint_url` and `graphs` to the desired data.
```bash
curl --location --request POST 'localhost:4010/validate/ap/url' \
--header 'Content-Type: application/json' \
--data-raw '{
    "sparql_endpoint_url": "<sparql_endpoint>",
    "graphs": ["your graph1", "your graph2"],
    "application_profile": "<application_profile>"
}'
```

## Validate SPARQL Endpoint with Shapes
change `schema_file0` (up to `schema_file4`), `sparql_endpoint_url` and `graphs` to the desired data.

```bash
curl --location --request POST 'localhost:4010/validate/shapes/url' \
--form 'sparql_endpoint_url="http://fuseki:3030/diff2Adr5pfiH"' \
--form 'schema_file0=@"<shape_file0>"' \
--form 'schema_file1=@"<shape_file1>"'
```

## Get all validations
use this to get validation `uid` to eventually retrieve the report
```bash
curl --location --request GET 'localhost:4010/validations' 
```

## Get validation report with specified type
set `validation_uid` and `report_type` (`html`, `json`, `ttl`, `zip`) to the desired values.
```bash
curl --location --request GET 'localhost:4010/validations/<validation_uid>?report_type=<report_type>'
```

## Remove validation
set `validation_uid` to the desired values.
```bash
curl --location --request DELETE 'localhost:4010/validations/<validation_uid>'
```

## get active tasks
change `task_id` to the desired task id.
```bash
curl -X 'GET' \
  'http://localhost:4010/tasks/active' \ 
  -H 'accept: application/json'
```

## check task status
change `task_id` to the desired task id.
```bash
curl -X 'GET' \
  'http://localhost:4010/tasks/<task_id>' \
  -H 'accept: application/json'
```

## revoke (kill) a task
change `task_id` to the desired task id.
```bash
curl -X 'DELETE' \
  'http://localhost:4010/tasks/<task_id>' \
  -H 'accept: application/json'
```
