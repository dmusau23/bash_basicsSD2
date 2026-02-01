#!/bin/sh


echo "Hello, my name is Daniel"
echo "You are happy?"
read answer

if [ "$answer" = "yes" ]; then
   echo "Smile :)"
else
   echo "Still Smile :)"
fi

# here are the other string comparison operators
# != , -n (not an empty string) , -z (an empty string)

# exercise: write a script that prints whether today is
# the weekend or not
echo "Which day of the week is today?"
read day

# Convert input to lowercase to make it case-insensitive
day_lower=$(echo "$day" | tr '[:upper:]' '[:lower:]')

if [[ "$day_lower" == "saturday" ]] || [[ "$day_lower" == "sunday" ]]; then
   echo "Hooray!! Today is the weekend. Enjoy yourself!"
else
   echo "Today is a weekday. Keep focused on your work."
fi