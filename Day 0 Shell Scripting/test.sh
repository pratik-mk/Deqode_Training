echo "1-a) Create sample folder"
mkdir sample
echo "1-b) create sample.txt in sample folder"
echo "1-c) add content to sample.txt "
cd sample
cat>sample.txt <<- "EOF"
Hi! This is just a sample text file created using a shell script.
EOF
echo "1-d) print content of file"
cat sample.txt
echo "1-e) number of occurrences of letter 't'"
echo "occurrences of t: "
grep -o 't' sample.txt | wc-l
echo "1-f) change owner permission to R-W-X"
chmod 777 sample.txt
echo "1-g) append content to sample.txt"
echo "Hi! This is just another sample text added to the file." >> sample.txt
echo "1-h) change group permission to only read"
chmod g=r sample.txt
echo "1-i) change all users permission to deny access to sample.txt"
echo "before"
ls -l sample.txt
chmod 000 sample.txt
echo "after"
ls -l sample.txt
echo "1-j) create file sample2.txt with same content as sample.txt"
echo "changing permission to access sample.txt"
chmod 777 sample.txt
cp sample.txt sample2.txt
echo "1-j) add random 1000 lines in sample.txt"
random=$(cat urandom | tr -dc 'a-zA-Z0-9' | fold -w 1000 | head -n 1)
echo "$random" >> sample.txt



