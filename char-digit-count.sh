#!/bin/bash

read -p "Enter a String: " input_string

alpha_removed = "${input_string//[^[:alpha:]]/}"

digit_removed = "${input_string//[^[:digit::]]/}"

alpha_count = "${#alpha_removed}"
digit_count = "${#digit_removed}"

echo "Alphabetic chars: $alpha_count"
echo "Digits: $digit_count"
