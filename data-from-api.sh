#!/bin/bash

# Define the URL of the REST API
API_URL="https://jsonplaceholder.typicode.com/todos/"

# Make a GET request to the API and store the response in a variable
response=$(curl -s "$API_URL")


# Check if the API request was successful (HTTP status code 200)
if [ $? -ne 0 ]; then
  echo "Error: Failed to retrieve data from the API"
  exit 1
fi

# Use jq to parse the JSON response and extract the "userId" and "title" fields
user_ids=$(echo "$response" | jq -r '.[].userId')
titles=$(echo "$response" | jq -r '.[].title')

# Check if the required fields exist in the JSON response
if [ -z "$user_ids" ] || [ -z "$titles" ]; then
  echo "Error: Required fields not found in the API response"
  exit 1
fi

# Print the data in tabular format
printf "%-10s %s\n" "User ID" "Title"
printf "=========================\n"
for ((i = 0; i < ${#user_ids[@]}; i++)); do
  printf "%-10s %s\n" "${user_ids[i]}" "${titles[i]}"
done

# Exit with a success status code
exit 0
