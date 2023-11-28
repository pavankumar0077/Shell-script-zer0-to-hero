## REQUIREMENTS ##

# Script should be executed with root user else exit with status 1 and error message.
# Script will take 1st argument as user and rest will be treated as comment.
# Auto generate password for the user
# Upon successful execution of script, display the following 
    # username: <username>
    # password: <auto_generated_password>
    # host: 


## STEPS ##
# Check if the script is being executed with superuser privileges.
# If the user doesn't supply at least one argument, then give them help
# The first parameter is the user name.
# The rest of the parameters are for the comments.
# Generate a password.
# Create the user with the password.
# Check to see if the useradd command succeeded.
# Set the password.
# Check to see if the password command succeeded.
# Force password change on first login.
# Display the username, password, and the host where the user is created.


#Commands
# echo $UID

#!bin/bash

# Script should be execute with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then
        echo "Plese run with sudo or root."
        exit 1
fi

# If the user doesn't supply at least one argument, then give them help
if [[ "${#}" -lt 1 ]]
then
        echo "Usage: ${0} USER_NAME [COMMENT]..."
        echo 'CREATE A USER WITH NAME USER_NAME AND COMMENTS FIELD OF COMMENT'
        exit 1
fi

# The first parameter is the user name.
USER_NAME="${1}"
echo $USER_NAME

# The rest of the parameters are for the comments.
shift
COMMENT="${@}"
# echo $COMMENT
# echo $RANDOM
# date +%s
# date +%s%N

# Generate a password.
PASSWORD=$(date +%s%N)
#echo $PASSWORD

# Create the user
useradd -c "${COMMENT}" -m $USER_NAME

# Check if user is successfully created or not
if [[ $? -ne 0 ]]
then
        echo "The account could not be created"
        exit 1
fi


# Set the password for the user using chpasswd
echo "${USER_NAME}:${PASSWORD}" | chpasswd

# Check if password is successfully set or not
if [[ $? -ne 0 ]]
then
        echo 'Password could not be set'
        exit 1
fi

# Force password change on first login. -e is used to expired the passswrd
passwd -e $USER_NAME

# Display the username, password, and the host where the user is created.
echo 
echo "Username: $USERNAME"
echo
echo "Password: $PASSWORD"
echo
echo $(hostname)

