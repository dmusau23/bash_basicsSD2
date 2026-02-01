#!/bin/sh

echo "Let's sing a beer song"
echo "How many bottles?"
read count

while [ $count -ge 0 ]; do
  if [ $count -ge 2 ]; then
      echo "$count bottles of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  elif [ $count -eq 1 ]; then
      echo "$count bottle of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  else
      echo "no more bottles of beer on the wall"
  fi
  
  # the following statement is equivalent to: let "count=count-1"
  ((count = count - 1))

done

# exercise: implement another counting song (such as 12 days of Christmas) 
# using loops and if statements.

echo "Now let's sing the 12 Days of Christmas"

day=1

while [ $day -le 12 ]; do
  echo "On the $day day of Christmas, my true love gave to me"

  if [ $day -ge 1 ]; then echo "a partridge in a pear tree"; fi
  if [ $day -ge 2 ]; then echo "two turtle doves"; fi
  if [ $day -ge 3 ]; then echo "three french hens"; fi
  if [ $day -ge 4 ]; then echo "four calling birds"; fi
  if [ $day -ge 5 ]; then echo "five golden rings"; fi
  if [ $day -ge 6 ]; then echo "six geese a-laying"; fi
  if [ $day -ge 7 ]; then echo "seven swans a-swimming"; fi
  if [ $day -ge 8 ]; then echo "eight maids a-milking"; fi
  if [ $day -ge 9 ]; then echo "nine ladies dancing"; fi
  if [ $day -ge 10 ]; then echo "ten lords a-leaping"; fi
  if [ $day -ge 11 ]; then echo "eleven pipers piping"; fi
  if [ $day -ge 12 ]; then echo "twelve drummers drumming"; fi

  echo ""
  ((day = day + 1))
done

echo "Now we sing about monkeys jumping on the bed"
echo "How many monkeys?"
read count

while [ $count -ge 0 ]; do
	if [ $count -ge 2 ]; then
		echo "$count little monkeys jumping on the bed"
		echo "one fell off and bumped his head"
		echo "Moma called the doctor and the doctor said"
		echo "No more monkeys jumping on the bed!"
	else
		echo "$count little monkey jumping on the bed"
		echo "He fell off and bumped his head"
		echo "Moma called the doctor and the doctor said"
		echo "No more monkeys jumping on the bed!"
	fi
	
	((count = count - 1))
	
done
