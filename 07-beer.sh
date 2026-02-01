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
echo "Alright everyone, clear your throats—it's caroling time!"
echo "Now let's sing the 12 Days of Christmas"
echo "----------------------------------------"

for day in {1..12}; do
    # Logic change: Using a case statement for ordinal suffixes (1st, 2nd, etc.)
    case $day in
        1)  suffix="1st" ;;
        2)  suffix="2nd" ;;
        3)  suffix="3rd" ;;
        *)  suffix="${day}th" ;;
    esac

    echo "On the $suffix day of Christmas, my true love sent my way:"

    # Logic change: A countdown loop to list gifts in descending order
    for (( gift=day; gift>=1; gift-- )); do
        case $gift in
            12) echo "Twelve drummers drumming," ;;
            11) echo "Eleven pipers piping," ;;
            10) echo "Ten lords a-leaping," ;;
            9)  echo "Nine ladies dancing," ;;
            8)  echo "Eight maids a-milking," ;;
            7)  echo "Seven swans a-swimming," ;;
            6)  echo "Six geese a-laying," ;;
            5)  echo "FIVE GOLDEN RINGS!!!" ;; # Extra emphasis
            4)  echo "Four calling birds," ;;
            3)  echo "Three French hens," ;;
            2)  echo "Two turtle doves," ;;
            1)  if [ $day -eq 1 ]; then
                    echo "A partridge in a pear tree."
                else
                    echo "And a partridge in a pear tree!"
                fi ;;
        esac
    done

    echo "...Next verse!" # Extra echo for pacing
    echo ""
done

echo "Whew! Someone get me some eggnog."

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
