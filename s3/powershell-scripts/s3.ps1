Import-Module AWS.Tools.S3

#Create a bucket in us-east-1

#hardcoded region
$region = "us-east-1"
#asks user for input
$bucketName = Read-Host -Prompt 'Enter the S3 bucket name'

Write-Host "S3: $bucketName"
Write-Host "S3: $region"

function BucketExists {
    #create a var that = the bucket with the name the user chose. if it errors out bc it doesnt exist, silently continue
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}
#if bucket doesnt exist / if it does exist
if (-not (BucketExists)) {
    Write-Host "Bucket does not exist..."
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket already exists..."
}


#Create a new file

$fileName = 'myfile2.txt'
$fileContent = 'Hello World'
Set-Content -Path $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName
