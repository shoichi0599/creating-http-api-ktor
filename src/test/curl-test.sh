#!/bin/bash

echo "Script Name: 'curl-test.sh'"
echo "===== START ===== "

# POST id: 100
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer \
--request POST \
--header 'Content-Type: application/json' \
--data '{
  \"id\": \"100\",
  \"firstName\": \"Jane\",
  \"lastName\": \"Smith\",
  \"email\": \"jane.smith@company.com\"
}'"
echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# POST id: 200
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer \
--request POST \
--header 'Content-Type: application/json' \
--data '{
  \"id\": \"200\",
  \"firstName\": \"John\",
  \"lastName\": \"Smith\",
  \"email\": \"john.smith@company.com\"
}'"
echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# POST id: 300
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer \
--request POST \
--header 'Content-Type: application/json' \
--data '{
  \"id\": \"300\",
  \"firstName\": \"Mary\",
  \"lastName\": \"Smith\",
  \"email\": \"mary.smith@company.com\"
}'"
echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# GET all
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer \
--request GET \
--header 'Content-Type: application/json'"
echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# GET id: 200
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer/200 \
--request GET \
--header 'Content-Type: application/json'"

echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# GET id: 500
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer/500 \
--request GET \
--header 'Content-Type: application/json'"

echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# DELETE id: 100
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer/100 \
--request DELETE \
--header 'Content-Type: application/json'"

echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

# DELETE id: 500
echo "--------------------------------------------"
command="curl -s http://127.0.0.1:8080/customer/500 \
--request DELETE \
--header 'Content-Type: application/json'"

echo "- Command : ${command}"
echo "- Response: $(eval "$command")"

echo "=====  END  ===== "