# Email-CLI
A CLI based email sender for Gmail

This software is licensed under the GNU General Public License. Please see license [here](LICENSE).

### Table of contents

- [Why](#why)
- [What](#what)
- [Installation](#installation)
- [Usage](#usage)
- [Uninstallation](#uninstallation)


### Why

This tool is intended to help leverage the awesomeness of Vim to write and send emails.

### What

Email-CLI is a tool written primarily in Expect to enable sending emails via BASH(others like ZSH and FISH will also work) terminal.

The tool uses openssl to connect to the email SMTP server using SSMTP via OpenSSL. 

Once connected, Vim opens for you to type your emails. Hence, you can use the full power of Vim +your plugins. 

At the time of writing this (Sun Jun 30 19:48:38 DST 2019), only Gmail is supported. This README will be updated as support for other email providers is added.

### Installation

#### Requirements

* Expect
* Openssl
* Vim

You can check if the requirements are met, by running the "check_reqs.sh" script
If requirements are met, you will get a message as below. 

```
$ ./check_reqs.sh
Requirements Satisfied
```
If there are unmet requirements, the output will look something like below. 

```
$ ./check_reqs.sh
Requirement not satisfied: expect not found
```
Install the application from your operating system's repositories.

#### Steps

* Clone this repo.

```
git clone git@github.com:sandeeprenjith/email-cli.git

```

or

```
https://github.com/sandeeprenjith/email-cli.git

```
* cd into the email-cli directory.

* Run the setup.sh file and provide your username, password and email address for gmail. 

```
./setup.sh -u test.tester -p test123456 -a test.tester@gmail.com
```

Running the script requires sudoer permissions. However, **don't run this with the "sudo" command**.

### Usage

$mailer -h or $mailer --help

```
$ mailer -h
Usage:
         mailer
                 or
         mailer \<filename\>

The program sends emails from the CLI.
Use without arguments to compose emails using Vim. Saving and closing Vim will send the email.
Specify a filename as the argument to send mail from a file. This is the intended method to use from scripts.

Email file syntax (maintain the syntax with input file and with Vim).
+------------------------------------------------------------------------------------+
| Line      | Content                                                                |
+------------------------------------------------------------------------------------+
| 1         | Recipient email address(s). Seperate multiple addresses with spaces.   |
| 2         | Subject line. Begin the line with 'Subject: ' followed by the subject. |
| 3 till EOF| Email message.                                                         |
+------------------------------------------------------------------------------------+

```

#### Compose new mail
 
* Run the command "mailer"
* The script should connect to gmail and authenticate
* Vim should open automatically. 
* Write your message in the below syntax

```
recipient1@test.com recipient2@test.com
Subject: Test Email
Hi Test,

This is a test email.

Regards,
Tester
```
* Save and close Vim
* Hit ENTER after closing Vim
* This should send your email.

**Please note:**
The first line of your message is "recipients". You can add multiple emails here by seperating them with spaces. 
The second line of your message is the "subject". Start the second line with "Subject: " before your actual subject. 
Type the email below these two lines.

#### Send mail form file.

To use in automation scripts and such, you may need to send emails from a file. 

* Run mailer <filename>

The text from the file will be emailed. The file should conform to the syntax, ie, line 1 should be recipients and line 2 should be subject starting with "Subject: ".

### Uninstallation

Run the file uninstall.sh to uninstall Email-CLI from the system. 


