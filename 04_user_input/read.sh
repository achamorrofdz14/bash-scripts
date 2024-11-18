#!/bin/bash


read -pr "What's your firstname? " name
read -pr "How old are you? " age

PS3="Enter your city from the following: "
select city in BCN MAD; do
break
done

read -N 4 -pr "Enter your phone extension: " extension
echo
read -pr "Enter your phone number: " phone

read -s -pr "Enter your secret password: " passwd

echo "Your name is $name, you are $age years old, you are from $city and your phone number is +$extension $phone"
echo "$name,$age,$city,$extension,$phone" >> user_data.csv




