#!/bin/bash
echo "Assignment.."
#1 - a
echo "1-a) Creating Dir 'sample'.."
mkdir $HOME/sample
echo "Directory Created..."
#1 - b,c
echo "1-b c) Creating file in folder...with contents...."
cd $HOME/sample && printf 'Hi! This is just a sample text file created
using a shell script.' > sample.txt
#1 - d
echo "1-d) Contents of the file are.."
cat sample.txt
#1 - e
echo "1-e) Counting the occurance of t in file.."
echo "occurances of t are : "
grep -o 't' sample.txt | wc -l
#1 - f
echo "1-f) Changing permissions.. of sample.txt"
chmod 777 sample.txt
echo "Changed"
#1 -g
echo "Hi! This is just another sample text added to the file." >> sample.txt
#1 -h <group to read only>
echo "1-h) Changing permission of Group to read .."
chmod g=r sample.txt
echo "----- Permissions are below -------"
ls -l sample.txt
#1 -i
echo "1-i) Denying all permissions from all users"
chmod 000 sample.txt
echo "----- Permissions are below -------"
ls -l sample.txt
#1 -j
echo "1-j) Reapplying permissions to sample.txt"
chmod 777 sample.txt
echo "----- Permissions are below -------"
ls -l sample.txt
echo "Creating New File sample2.txt with sample.txt"
cp sample.txt sample2.txt
#1 -k
echo "1-k) ----- Generating Random String for 1000 chars ----------------"
random= $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 1000 | head -n 1)
echo "Appending in file Sample.txt......"
echo "$random" >> sample.txt
echo "Done"
#1 -l
echo "1-l) Printing top 50 lines"
head -50 sample.txt
#1 -m
echo "1-m ) Printing bottom 50 lines"
tail -50 sample.txt
#1 -n
echo "1-n) Creating Multiple Files ..."
touch prog1.txt prog2.txt program.txt code.txt info.txt
#1 -o
echo "1-o) Complete List of files within the folder.."
ls
echo "---------------Files with Prog in name -----------"
ls | grep 'prog'
#1 -p
echo "1-p) making alias for the Same command ....... named > deqode"
alias deqode= "cd $HOME/sample && ls | grep 'prog'"
echo "executing ... DEQODE ........"
$deqode
echo"------------------------------End--------------------------------------------------------"
