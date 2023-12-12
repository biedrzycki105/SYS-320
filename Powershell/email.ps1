# Storyline: Send and email

# Body of the email
$msg = "Hello there."

# Write-Host 
Write-Host -BackgroundColor Red -ForegroundColor White $msg

$fromEmail = "erik.biedrzycki@mymail.champlain.edu"

$toEmail = "jletourneau@champlain.edu"

#Send-MailMessage -From $fromEmail -To $toEmail -Subject "A Greeting" -Body $msg -SmtpServer 192.168.6.71