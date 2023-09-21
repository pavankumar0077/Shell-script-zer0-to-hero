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

