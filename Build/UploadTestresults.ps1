# upload results to AppVeyor
$wc = New-Object 'System.Net.WebClient'
$wc.UploadFile("https://ci.appveyor.com/api/testresults/nunit/$($env:APPVEYOR_JOB_ID)", ("c:\projects\easynetq\Source\EasyNetQ.Tests\TestResult.xml"))
$wc.UploadFile("https://ci.appveyor.com/api/testresults/nunit/$($env:APPVEYOR_JOB_ID)", ("c:\projects\easynetq\Source\EasyNetQ.DI.Tests\TestResult.xml"))