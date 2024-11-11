#!/bin/bash


read -p "What's your firstname? " name
read -p "How old are you? " age

PS3="Enter your city from the following: "
select city in BCN MAD; do
break
done

read -N 4 -p "Enter your phone extension: " extension
echo
read -p "Enter your phone number: " phone

read -s -p "Enter your secret password: " passwd

echo "Your name is $name, you are $age years old, you are from $city and your phone number is +$extension $phone"
echo "$name,$age,$city,$extension,$phone" >> user_data.csv




