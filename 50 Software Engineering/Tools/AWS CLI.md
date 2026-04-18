# X-Ray

## Find the Most Frequent Queries Associated with a Trace

```
aws --profile live xray batch-get-traces --trace-ids 1-63d11179-4ff49fe710962249713b6308 --query 'Traces[*]' | # Get all the trace data for a given ID

jq -c ".[].Segments[].Document | fromjson | .sql.sanitized_query" | # Extract the santized queries from the trace data

sort -n | uniq -c | sort -nr # Group the queries and order by most frequent
```

## Find the Longest Queries Associated with a Trace

`jq -c ".[].Segments[].Document | fromjson | select(.sql.sanitized_query != null) | [((.end_time - .start_time) * 100 | round / 100), .sql.sanitized_query]"`

# Code Snippets

## List Through Lambdas

`aws --profile=sandbox lambda list-functions | jq ".Functions[].FunctionName" | grep loadqa | grep -o "[0-9a-z\-]*"`

## Get the Duration of Each Lambda

```bash
lambdas=$(aws --profile=sandbox lambda list-functions | jq ".Functions[].FunctionName" | grep loadqa | grep -o "[0-9a-z\-]*")
for lambda in $lambdas; do
	duration_ms=$(awslogs get /aws/lambda/$lambda --start="2021-09-07 10:39" --end="11:39" --profile=sandbox --filter-pattern="Billed Duration" | grep -oP "Billed Duration: \K\d*" | sort -n | tail -n 1)
	if [ ! -z $duration_ms ]; then
		duration_s=$(echo "scale=2; $duration_ms/60000" | bc)
		echo "$duration_s $lambda"
	fi
done
```

## See Errors

```bash
stage=loadqa
declare -a arr=("flex" "bids" "analytics" "markets" "emails" "contracts")
for service in "${arr[@]}"; do
	awslogs get /aws/lambda/$service-$stage --start='15:04' --profile sandbox --filter-pattern='ERROR'
done
```
