# Shell Scripting for DevOps.

- To create a shell script file 
    
      touch first-shell-sript.sh 
Shell script always have .sh extension.

<img width="428" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/50cdb37a-18f3-436a-8449-d8c56088fbe5">


- To list the files

      ls
  It will shows all the files in the present directory.

  <img width="332" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/7b96702b-bd04-4ffa-96ca-b56c4769bd93">


- To list the files with more information(permisiion, creation time etc) in long listing format.

       ls -ltr
  Here -l refers to long listing format
        t refers to time (if there are many files in the directory then it will show files newly created first)
        r refers to reverse sorting

  And when combined ls -ltr will result in files in long listing format with new files in reverse order(file created 5min ago will be shown first and file created 2min ago will shown after that)

  <img width="511" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/b2d403d3-70f1-44a5-ad21-52c55d2893a2">

  And if you we use ls -lt it will result in long listing of file with new files created first

  <img width="478" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/3abe0556-5130-4b1b-9004-4f07c3e1f7f5">

 - Every shell script start with #!/bin/bash known as shebang.

   ## INTERVIEW QUESTION: Difference between #!/bin/sh and #!/bin/bash

    ANSWER: sh and bash both are executables to execute the script, previously if we wrote #!/bin/sh then it would link that to the bash executable but now some operation systems decided to link with dash as by default executable.
   Dash has a different syntax which will cause it to not run the script.

   So, it is recommended to use "#!/bin/bash" , bash refers to interpreter.

- Difference between touch and vim command?

     Both the commands are used to create files, but when the vim command is used it will create and open the file to edit, where as touch command will only create a file.

    touch is useful in automation as if we have a task to create 1000 files then using vim command will create and open 1000 files which is not recommended.

 - What will be the output of the command date | echo "Today is" ?

        date | echo "Today is"

   <img width="420" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/8e69296c-e09f-46ce-8219-65bf39ac5e0a">


    The output of the above command will be Today is, as the date command is system default command and it will send the output to stdin and but '|' will not receive the output from the stdin, pipe can only recive the information if the command is not sending the information to stdin and if the command is ready to pass the information to the next next command.

- Run script in debug mode

      set -x
  This command will print the command used in the script with the output.

   <img width="582" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/524de873-3c63-45c8-804b-4a6afdda458a">


 -  We can run a scri[t by using bash file1.txt

           bash file1.txt

    <img width="445" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/07add166-30e9-4711-bb00-333ea9880cdc">


- NOTE: In order to run a script, first we have to make the script executable by chnanging the permission of file using the command chmod .

        chmod 700 file.sh

This command will make the file executable and can be execute by the owner of the file only.

- Run the script by using the below command.

        ./file.sh

- Use case : If we use any script without 'set -e' thwn it will executes the script irrespective of the error it found.

<img width="457" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/1d30595f-236b-42f9-9b09-185dea601e38">

The output will be excuted with the error.

<img width="569" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/49338a60-3998-416f-8440-89912e95df24">


 -  But when we use 'set -e' it will stop the script as soon as error occured in the script.

  <img width="449" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/a34c7e44-d734-4ee9-a220-23c202a37309">

The script will stop as it found error.

<img width="571" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/b4d44658-aa3c-49be-a155-7e829ba3f440">

- Use of set -o pipefail

  When the error occured while using the pipe then set -o pipefail will exit the script.

  Without using set -o pipefail

  <img width="460" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/de6fd1f0-94f3-4334-a802-fe4c2ae69292">

  ouput: Script is running as set -e command only check the last command which is echo in this case.

  <img width="656" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/4fd17963-6511-46da-9471-83a3af8fba2e">


With using set -o pipefail

<img width="463" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/5906a158-a410-4f66-a04e-a52f3393c9b5">

Output: Script stops as error occured.

<img width="576" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/66da68ca-603a-4369-a899-15a8b737f96d">

- Difference between curl and wget.

- Command to retrieve the information from the internet

      curl https://raw.githubusercontent.com/ManishNegi963/Shell-script-zer0-to-hero/main/dummylog01122022.log

  <img width="821" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/0c3b145e-8f1c-4b05-abd2-0ead26b2ce97">

 - Using grep with curl to retrieve specific information.

       curl https://raw.githubusercontent.com/ManishNegi963/Shell-script-zer0-to-hero/main/dummylog01122022.log | grep ERROR

   <img width="840" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/42dee9d2-ccc4-4817-811f-15362bd401e9">


- wget command also retrieve the information from the internet but it download the information into a file.

        wget https://raw.githubusercontent.com/ManishNegi963/Shell-script-zer0-to-hero/main/dummylog01122022.log

  <img width="778" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/cdd72909-571e-4df9-9d24-27142f4684fa">

- Then we can use cat and grep command retrieve information

    cat dummylog01122022.log | grep ERROR

<img width="632" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/57f6429f-1708-42d3-98a9-b54023d15a95">


- Using grep command to find a word written inside a file.

      grep -r fifth /home/mnmanish/
 use -i to find a word case insensitive.
  <img width="527" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/ef5a2d84-0d6f-423a-b244-55c630fb18ae">


- How to find any file?

      sudo find / -name test.sh

<img width="691" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/5690aff4-1d81-4497-a0f3-3a8c71cbaa2d">

- if else loop

  a=4
  b=10

      if [ $a -gt $b ]
      then
      echo "A is greater than B"
      else
      echo "B is greater than A"
      fi

  Output: B is greater than A

  - for loop
     
        for i in {1..100}
        do
        echo $i;
        done        

Ouput: It will print number 1 to 100

- How to use trap command?

  Usage: Suppose a script is runnning and you accidently press ctrl+c then it will stop the script but when trap command is used we can interrupt the user to stop the script with echo message or sending email to owner of script etc. We can trap the signal to interrupt the script.

      trap "echo dont use ctrl+c"  SIGINT

  Or in case the data is being read and transferred by a script and someone try to interrupt the script by pressing ctrl+c then by using trap to remove all of the data being transferred as only half the data is transferred.

      trap "rm -rf *" SIGINT

- Find the process having ERROR and provide the process id from the log file

      cat test.log | grep ERROR | awk -F " " '{print $3}

OUput : Process id having word ERROR

- How to kill a process?

      kill -9 415424

-  NOTE: / is the root directory and /bin consist of all the commands of linux

  <img width="666" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/8fc90dac-516f-4b4e-8863-77cfc891d480">

- '~' is the short form of /home/user/

  <img width="300" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/df513385-99ca-4b13-9cf4-bd89b511b83f">

- Write command to create 10 files?

      touch file{1..10}.txt

<img width="800" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/595a0492-5c93-42e2-80a8-1558e757b654">

- Write command to create & view directories recursively A/B/C?

      mkdir -p A/B/C

  <img width="406" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/4307e74c-35c3-4edd-a065-2c4f4a85bfac">


where -p refers to parent directory(A is parent directory)

- List directory recursively A/B/c

      ls -R A
- Remove directory recursilvely A/B/C

      rm -R A

  <img width="394" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/e57520c0-dd7e-410f-bcc6-256721d880d8">

- Write command to print first 3 line in a file?

      head -3 file1.txt

<img width="435" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/3b1558fd-608e-4d23-8a60-50accb3135c4">

- Write command to print last 2 lines in a file?

      tail -2 file1.txt

<img width="451" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/49319ae5-f5be-4e49-af8f-eb03611d87f5">

- Difference between sudo useradd myuser and sudo useradd -m myuser?

      sudo useradd -m myuser 
This will create a directory of user in /home, -m refers to create a directory of user in home directory

<img width="548" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/51628fd8-004f-4a08-8dba-965e9e57d8cb">


    sudo useradd myuser 
This will create user but won't create a directory of the user in /home. When you add a user, by defaut the user is added to his own group.

<img width="538" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/71d64444-12c3-4529-bf1a-5cde190ee25b">


- View all the users.

      cat /etc/passwd

  <img width="359" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/6c631f42-f4ee-4e8b-bb1d-25364bd127c0">

- Users created

<img width="350" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/e5f8e896-1ac5-4f0e-ace4-4770771cae00">


- How linux is secure?

  Every tool used in linux will create a user and one user doesnot have permission to interact with other user by default and that's what makes linux secure.

- Difference between update and upgrade

  update download the packages 

      sudo apt update


and upgrade install the packages.
        
        sudo apt upgrade

- Command to add group.

      sudo groupadd mygroup

  <img width="387" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/f8d24f8d-9ea1-4f8a-81ee-9dd8929196b0">


- view group

      sudo cat /etc/group

  <img width="341" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/1aeff944-69ee-4711-bc0d-6c3268bb9832">


  When you add a user, by defaut the user is added to his own group.

- Write command to Add user to a group.

      sudo usermod -aG mygroup myuser

  -a refers to append and G refers to group.

  <img width="555" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/eb19a47d-2e5a-491e-bf5b-90ff5c78b172">

- myuser has been added to the mygroup and now has permission of mygroup.

    sudo cat /etc/group

<img width="354" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/68550faa-24cf-479d-bf1b-544ab49cd1a6">

- Adding multiple users to a group.

      sudo gpasswd -M myuser,myuser1 mygroup2

  <img width="608" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/661b6762-d95f-4efd-ad6a-33fb7f1d9613">
  -M refers to multiple, this method of adding mulitple users to group will override the users, so to avoid that add existing users with new users.

  Multiple user has been added to group

  <img width="334" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/7e14da53-f91d-45ca-a831-5a95689c7f84">

- Removing user from group

      sudo gpasswd -d myuser1  mygroup2

  <img width="541" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/0a6a3c22-6cd7-4208-9b15-dae99bd08b3b">

myuser1 has been removed from mugroup2

    sudo cat /etc/group

<img width="339" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/2a6d788e-446c-4f42-b6bd-33657327fcd0">

- Delete group

      sudo groupdel mygroup2

  <img width="504" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/cfc47ee9-0d47-49ba-81f3-49541490521a">

- View file permission.

      ls -l file1.txt

  <img width="423" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/bb786618-b167-40f6-9722-308cacf59c71">

- Change file permission to user to execute.

      chmod u+x file1.txt

  <img width="499" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/a463d246-7859-43cb-9b15-4824b804ae8b">

- Change group of a file.

      sudo chgrp file1.txt mygroup

<img width="384" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/c442abb8-e9ee-450d-96ea-972a88e44b1c">

Group has been changed to mygroup from mnmanish(As by default a file belong to owner of group)

    ls -l file1.txt

<img width="421" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/ba81479f-a6ab-4165-b7c4-514bb120dfa0">

- Use case of 'arguments':

$1 to take one argument, $# is used to count total argument, $@ to print all the arguments.

 <img width="343" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/a75a1bf0-69f5-4f86-b21e-4c656408a087">

Output: 

<img width="578" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/f7e08b7a-7aaa-419b-b480-e3a9803ff27d">

- How to take backup and create zip?

      tar -cvf backupfiles.tar.gz ~/Shell-scripting/firstfolder

-c refers to create
v refers to verbose(print on screen)
file refers to filename
.tar.gz is zip file extension

<img width="703" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/a1de2260-3565-4de2-8958-4942e44c469a">

- Extract zip file

      tar -xvf backupfiles.tar.gz

-x refers to extract

 - Script to take backup
     
       #!/bin/bash
       src=/home/mnmanish/Shell-scripting/firstfolder
       tgt=/home/mnmanish/Shell-scripting
       filename=$(date +'%d-%m-%y').tar.gz
    
       tar -cvf $tgt/$filename $src

   This will create a backup with filename as current date.tar.gz in /home/mnmanish/Shell-scripting

<img width="214" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/b5a2808f-0eed-4060-a3d9-d35fb63fc9c4">


- To schedule a cronjob to take run this automatically.

- Select the editor

      crontab -e

 - Schedule job.

          * * * * * bash /home/mnmanish/Shell-scripting/firstfolder/file5.txt

- Usecase of Access control list

  ACL is used when to give read or write permission to a user which is not part of a group without adding user to group.

      getfacl file1.txt

  This will show the details of file permissions.

  <img width="485" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/68b6ba3f-b2ad-4622-8333-91b4141e4a38">


        setfacl -m u:mnmanish:rw file1.txt

This will provide read and write access to user mnmanish to file1.txt

<img width="513" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/7e89d971-465e-4037-a646-13adce93545f">

    setfacl -x u:mnmanish file1.txt

This will remove the access for mnmanish use to file1.txt

<img width="514" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/9ea4901b-0588-4cb5-98d9-aa434d79dc44">


- Multiline comments

      <<COMMENT1
      This is exmaple
      of multiline
      comments
      COMMENT1

  - COntrol commands
 
        if condition
        then
        Display list of command if condition is true
        else
        DIsplay list of commands if condition is false
        fi    

   ## NOTE: if and then must be separated, either with a <<new line>> or a semicolon(;)

  - Script to find greatest among 3 numbers
 
    <img width="305" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/1a60cd19-aa35-4b3e-b419-28f4fe64d159">

        #!/bin/bash
        
        read -p "Enter number one" n1
        read -p "Enter number two" n2
        read -p "Enter number three" n3
        
        if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
        then
        echo "$n1 is greatest number"
        elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
        then 
        echo "$n2 is greatest number"
        elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]
        then 
        echo"$3 is greatest number"
        else
        echo "All numbers are same"
        fi

    OUtput :

  <img width="386" alt="image" src="https://github.com/ManishNegi963/Shell-script-zer0-to-hero/assets/124788172/2a880242-27a3-425a-a820-7494430dd236">


  
