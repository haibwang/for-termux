#!/bin/bash


echo this is a test!

#how to used  " or '

echo let's go , this's good
echo "let's go,this's good"




whoami #display user
cal    #display calendar


#the  envirement varibale
#display user information from the systerm

echo "User info for userid: $UID"
echo UID:$UID
echo HOME:$HOME

# the $ in ""

echo "the cost of the item is $15"  #the $15 will only dispaly 5
echo "the cost of the item is \$15" #need use \ to escape 

# define variable
# sensitive capital ,the lenth at most  20, combine of num/_/a~z/A~Z

#test variables 
days=10
guest="Katie"
echo "$guest checked in $days days ago"
days=5
guest="Jessica"
echo "$guest checked in $days days ago"

#command replace
#get the information from command output,and used to varibales
#1 used ` to repalce varibale
#2 used $() assignment to variables
var=`date +%y-%m-%d`
echo command replace:date is : $var
var2=$(cal)
echo "commnad relace: cal is:
$var2"

#command how to used
#used var to generate file
ls -al > file_list.$var

# remenber, command repalce will creat a child shell to execute that command
# so ,that command cant used this shell's varibles
# such as flow,but i cant repalcement that situation;

var=shell_basic.sh
var3=`ls -l $var`
echo $var3


#--------------------------------------------------------------------------#
#---------------------redirection input and out put------------------------#

#--@ output redirection @--#
# 1 used ">" to redirection
# 2 used ">>" to append to a file


#--@ input redirection @--#
# 1 used "<" to redirection input
# eg: command < inputfile
wc < shell_basic.sh  # this command will output this file's rows number, words number, bytes number

# 2 inline input redirection: "<<"
# shell will used sencond tip char ">" to tip, until mark char (eg:"EOF") was input
# eg: command << marker




#-------------------------------------- math operation --------------------------------#
# the shell is only surport integer number opreations,
# if you wish to floating oprations, maybe use bc command;

# 1 used expr command
# 2 used " [ ] "

# 1 eg:$[ operation  ]
echo -n math opreaion:
var1=$[1+5]
echo var = $var1

var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - var3)]
echo The final result is $var4

# used bc command in shell
var1=$(echo "scale=4;1/3"|bc)  #used command rerpalce
echo The answer is $var1

var1=10.46
var2=43.67
var3=33.2
var4=7

#used command replace
var5=$(bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1+b1
EOF
)

echo The final answer for this mess is $var5



#-------------------------------------exit shell----------------------------------------------#
# $? is last command exit status,if it execte successful,will return 0;
# is that command is invlid, this $? will be 127;
# if $? is 126, that is mean there is no access to execute;
# Generally, shell will use the last command return status as itself exit status;
# shell exit status can be change with exit parameters,such as "exit 5"





