#Pow It

##Motivation
I really like 37signals new zero config rack server called [pow](http://pow.cx/), but they require you to cd into ~/.pow and create a symlink to the project each time you want to put a project on pow.Since I'm lazy I put an executable in my path that does that for me.

##Installation
Install Powit by running this command:
`curl byrdhou.se/powit/install.sh | sh`
Restart your terminal. Then you can create a pow project by doing `powit ~/absolute/path/to/project`