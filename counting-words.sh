#!/bin/bash

echo "Enter your name"
read text

word=$(echo -n "$text" | wc -w)
char=$(echo -n "$text" | wc -c)

echo "Words Count = $word"
echo "Char count = $char"
