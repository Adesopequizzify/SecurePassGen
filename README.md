# Password Generator Script

This is a simple script that generates random passwords of varying complexity levels and allows you to save them with custom names.

## How to Use

1. Clone or download this repository to your local machine.

2. Open a terminal window and navigate to the directory where the script is located.

3. Make the script executable using the following command:

   ```bash
   chmod +x pass.shRun the script using:./pass.shFollow the menu prompts to choose the password complexity level (strong, normal, or less), enter the desired password length, and provide a custom name for the password.The generated password will be displayed on the screen, and it will be saved in a text file named passwords.txt along with the custom name you provided.Password Complexity LevelsStrong: Generates a random password with a mix of uppercase letters, lowercase letters, and digits.Normal: Generates a random password with alphanumeric characters (letters and digits).Less Complex: Generates a random password with only alphanumeric characters (letters and digits).Saving PasswordsEach time you generate a password, you will be prompted to enter a custom name for the password. The password and its corresponding name will be saved in the passwords.txt file in the following format:Name: custom_name
Password: generated_passwordRequirementsThis script requires a Unix-like terminal environment to run. It uses the /dev/urandom device to generate random passwords.NotesAlways exercise caution when handling generated passwords. Keep them secure and do not share them with others.The passwords are generated using random character selection, which ensures randomness but might not meet specific security requirements. Always use generated passwords responsibly.