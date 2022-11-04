#!/bin/bash

rm -rf traces.txt

# -=-=-=-=-	CLRS -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

DEF_COLOR='\033[0;39m'
BLACK='\033[0;30m'
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
MAGENTA='\033[0;95m'
CYAN='\033[0;96m'
GRAY='\033[0;90m'
WHITE='\033[0;97m'

# -=-=-=-=-	CLRS -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

FILE=$PWD/minishell
FICHERO=test_check.txt

if [ -f "$FILE" ]; then
	echo -n
else
	printf "${RED}NO EXIST MINISHELL PROGRAM ${DEF_COLOR}\n";
	exit 0
fi

printf ${BLUE}"\n-------------------------------------------------------------\n"${DEF_COLOR};
printf ${BLUE}"\n\t\t\tECHO \t\n"${DEF_COLOR};
printf ${BLUE}"\n-------------------------------------------------------------\n\n"${DEF_COLOR};

echo ECHO TEST >> traces.txt
echo >> traces.txt

cont=0
c=1
COMMAND="echo"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="ECHO"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="eCHo"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="Echo"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="eCHO"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="'echo'"
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="\"echo\""
LINE=""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="echo"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="'echo'"
LINE="hola"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="\"echo\""
LINE="hola"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'hola'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"hola\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="'echo'"
LINE="\"hola\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="\"echo\""
LINE="'aaa aaa'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'\"'\"a\"'\"'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"'\"'\"'\"'a'\"'\"'\"'\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"'\"'\"'\"'que tal'\"'\"'\"'\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"'\"'\"'\"'$""USER $""nada $""PWD/1'\"'\"'\"'\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"'\"'\"'\"'$""USER'\"'\"'\"'\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"'\"'\"'\"$""USER\"'\"'\"'\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'\"'\"'\"$""USER\"'\"'\"'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'\"'\"'\"'$""USER'\"'\"'\"'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"\"\"\"\"$""USER\"\"\"\"\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="''''$""USER''''"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\" \" \" \" \" $""USER \" \" \" \" \""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="' ' ' ' $""USER ' ' ' '"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'$""USER'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"$""USER\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\" '$""USER' \""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="' \"$""USER\" '"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"$""USER \" \"\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"$""USER ' '\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'           \"$""USER\"           '"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"           \"$""USER\"           \""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'    aaa       \"$""USER\"    aaa       '"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"    aaa       \"$""USER\"    aaa       \""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'\"' \"\"\"\" \"\"\"\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'\"' \"''\" \"\"\"\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa\"$""USER\"aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa \"$""USER\" aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa '\$USER' aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";	
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa'\$USER'aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";	
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"$""USER/1\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'$""USER/1'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER/1"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER*1"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))


COMMAND="echo"
LINE="$""USER#1"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))


COMMAND="echo"
LINE="$""USER+1"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER=aaabbbccc"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""1aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""1USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER $""USER1 $""USER $""USER2"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER $""nada $""1nada $""PWD/a"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="~"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="\"~\""
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="'~'"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa~"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="~aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="aaa~aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="~/aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="~/aaa/bbb"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER$""USER$""USER$""USER$""USER$""USER$""USER$""USER$""USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""PATH$""PATH$""PATH$""PATH$""PATH$""PATH$""PATH$""PATH$""PATH"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$(bash -c "$ARG")
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER$""123USER$""USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER=aaa$""USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo"
LINE="$""USER=\"aaa\"$""USER"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

printf ${BLUE}"\n-------------------------------------------------------------\n"${DEF_COLOR};
printf ${BLUE}"\n\t\t\tECHO -n\t\n"${DEF_COLOR};
printf ${BLUE}"\n-------------------------------------------------------------\n\n"${DEF_COLOR};

echo ECHO -N TEST >> traces.txt
echo >> traces.txt

cont=0
c=1

COMMAND="echo -n"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -nnn"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -n -n -n"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -nnn -nnn -nnn"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -nnn\"\"n"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -nnn \"-n\""
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

COMMAND="echo -nnn\"\"n""$""USER"
LINE="aaa"
ARG="$COMMAND $LINE"
M=$(./minishell -c "$ARG")
B=$($COMMAND $LINE)
if [ "$M" == "$B" ];then
	printf "${GREEN}$c.[OK] $ARG ${DEF_COLOR}\n";
	((cont++))
else
	printf "${RED}$c.[KO] $ARG ${DEF_COLOR}\n";
	echo Test $c expected:$B >> traces.txt
	echo Test $c result:$M >> traces.txt
	echo >> traces.txt
fi
((c++))

