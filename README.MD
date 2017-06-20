This is a quick & dirty bash script to allow for the refund of hundreds of transactions. 

Pre-Requisites: This needs to be run on a linux box. A fairly recent version of Curl needs to be installed.

Usage: 
1. Supply your PayPal API Credentials ( can be retrieved from https://www.paypal.com/businessprofile/mytools/apiaccess > You need the signature credentials )
2. SUBJECT should be your own PayPal Account E-Mail. If you're going to execute API calls in the name of another PayPal Account, that account will have to grant you 3rd party api access
3. Supply the transaction IDs in file "transactionid.txt". One line per transaction ID. Make sure you save the file in Unix EOL format (e.g. in notepad++ > Edit > EOL Conversion > Unix LF)
4. Make sure the output.txt file is empty.

To run the batch, execute ./RefundTransaction.sh

The full api response will be logged to the output.txt file. 

That should be it, enjoy refunding :)