#!/usr/bin/python

def send_email(user, password, recipient, subject, message):
# Adopted from: https://dev.to/mraza007/sending-sms-using-python-jkd

    import smtplib
    from email.mime.text import MIMEText
    from email.mime.multipart import MIMEMultipart
    import getpass

    # Enter sender's email and password
    sender_email = user #"kevinlacaille@gmail.com"
    sender_password = password
    # sender_password = getpass.getpass("Type your password and press enter: ")

    # More SMS gateways here: https://www.comparecellular.ca/text-messaging/
    sms_gateway_kevin = '9028029718@msg.telus.com'
    sms_gateway = recipient #sms_gateway_kevin
    # The server we use to send emails in our case it will be gmail but every email provider has a different smtp
    # and port is also provided by the email provider.
    smtp = "smtp.gmail.com"
    port = 587
    # This will start our email server
    server = smtplib.SMTP(smtp, port)
    # Starting the server
    server.starttls()
    # Now we need to login
    server.login(sender_email, sender_password)

    # Now we use the MIME module to structure our message.
    msg = MIMEMultipart()
    msg['From'] = user
    msg['To'] = sms_gateway
    # Make sure you add a new line in the subject
    msg['Subject'] = subject + " \n"
    # Make sure you also add new lines to your body
    body = message + " \n"
    # and then attach that body furthermore you can also send html content.
    msg.attach(MIMEText(body, 'plain'))

    sms = msg.as_string()

    server.sendmail(sender_email, sms_gateway, sms)

    # lastly quit the server
    server.quit()

if __name__ == "__main__":
    import sys
    allArgs = []
    for eachArg in sys.argv:
        allArgs.append(eachArg)
    user = allArgs[1]
    password = allArgs[2]
    recipient = allArgs[3]
    subject = allArgs[4]
    message = allArgs[5]
    send_email(user, password, recipient, subject, message)
