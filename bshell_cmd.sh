read	reads in a string from user input set to a variable. 	read name

ssh: ssh -i <pem file> <user_name>@<server_ip>

scp -i <pem file> <source> <destany>

tar -xvf <file name> for .tar 
tar -xzvf <file name> for .tar.gz

wget <url>

#delete the file content
> filename

#run iinstruction in background without hangup
nohug <instruction> > <outputfile> 2&1> & #note the last symbole is &

#push the current working directory into memory for return
pushd <pathofdir>

#pop back to teh previous working directory
popd

#walk through the file system tree from the current folder and execute commands.
find . -exec [command lines] {} \;

#measure the processing time of a process
add time before the command line.
time find . -exec ls

#determine path as directory or file
#first put the pwd to the current folder if the path is a relative path.
if [[ -d $p ]]
if [[ -f $p ]]

#get the file name and extension from path
filename="${p##*/}"     #"${p##patern} means trim the longest string with the patern from the begininng"
fileextension="${p##.}"
#"${p#patern} means trim the shortest string with the patern from the beginning"
#"${p%%patern} means trim the longest string with the patern from the end"
#"${p%patern} means trim the shortest string with the patern from the end"

#sort the file which gathers the same lines together, then unique and count the number, then sort the result with reversed numerical order
sort [file] | uniq -c | sort -nr
 
