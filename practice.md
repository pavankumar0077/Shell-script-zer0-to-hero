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

   So, it is recommended to use "#!/bin/bash"

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

- 
