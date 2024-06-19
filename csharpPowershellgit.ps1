<#
hehehehe
hehehehehe
hehehehehehe

#>

write-host "Testing"
using namespace System.IO
using namespace System.Security.Cryptography
$Uri = "https://raw.githubusercontent.com/spottsmorpheus/WindowsSecEvents/main/src/WindowsSecEvents.ps1"
$ProgressPreference = "SilentlyContinue"
# Load Powershell code from GitHub Uri and invoke as a temporary Module
$Response = Invoke-WebRequest -Uri $Uri -UseBasicParsing
if ($Response.StatusCode -eq 200) {
    $Module = New-Module -Name "WindowsSecEvents" -ScriptBlock ([ScriptBlock]::Create($Response.Content))
}
# Define the C# code
$CSharpCode = @"
using System;
using System.IO;
using System.Security.Cryptography;

public class HashGenerator
{
    public string GenerateHash(string input)
    {
        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(input);
            byte[] hash = sha256.ComputeHash(bytes);
            return BitConverter.ToString(hash).Replace("-", "");
        }
    }
}
"@

# Add the C# code to PowerShell
Add-Type -TypeDefinition $CSharpCode -Language CSharp

# Create an instance of the C# class
$hashGenerator = New-Object HashGenerator

# Generate a hash for a given string
$inputString = "Hello, PowerShell!"
$hash = $hashGenerator.GenerateHash($inputString)

# Output the hash
Write-Output "Input String: $inputString"
Write-Output "SHA256 Hash: $hash"
 
$StartDate = (Get-Date).AddMinutes(-20)
#start-sleep 100
Read-Pslog -StartDate $StartDate -AsJson
