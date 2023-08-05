#!/bin/bash

# Function to generate password and save to file
generate_password() {
    local complexity=$1
    local password_length=$2

    # Generate a random password based on complexity
    case $complexity in
        strong)
            password=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w "$password_length" | head -n 1)
            ;;
        normal)
            password=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w "$password_length" | head -n 1)
            ;;
        less)
            password=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w "$password_length" | head -n 1)
            ;;
    esac

    # Prompt user for a name to save the password
    read -p "Enter a name for the password: " password_name

    # Save the password to a text file
    echo "Name: $password_name" >> passwords.txt
    echo "Password: $password" >> passwords.txt

    # Display the generated password
    echo "Generated Password: $password"
}

# Menu loop
while true; do
    echo "Menu:"
    echo "1. Generate Strong Password"
    echo "2. Generate Normal Password"
    echo "3. Generate Less Complex Password"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter password length: " password_length
            generate_password "strong" "$password_length"
            ;;
        2)
            read -p "Enter password length: " password_length
            generate_password "normal" "$password_length"
            ;;
        3)
            read -p "Enter password length: " password_length
            generate_password "less" "$password_length"
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done