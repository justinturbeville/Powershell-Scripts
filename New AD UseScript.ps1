New-ADUser `
    -Name (Read-Host "Enter Full Name") `
    -GivenName (Read-Host "First Name") `
    -Surname (Read-Host "Enter Lastname") `
    -SamAccountName (Read-Host "Enter Username") `
    -AccountPassword (Read-Host -AsSecureString "Enter Password") `
    -ChangePasswordAtLogon $True `
    -DisplayName (Read-Host "Enter Display Name") `
    #-Company "Code Duet" `
    #-Title "CEO" `
    #-State "California" `
    #-City "San Francisco" `
    #-Description "Test Account Creation" `
    #-EmployeeNumber "45" `
    #-Department "Engineering" `
    -Country "us" `
    #-PostalCode "940001" `
    -Path "OU=Domain Users, DC=justinwt, DC=com" `
    -Enabled $True 