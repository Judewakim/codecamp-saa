## Create a bucket

aws s3 mb s3://meta-fun-jw-458496

## Create a new file

echo  "Hello Mars"> hello.txt

## Upload file with metadata

aws s3api put-object --bucket meta-fun-jw-458496 --key hello.txt --body hello.txt --metadata Planet=Mars

## Get metadata through head object

aws s3api head-object --bucket meta-fun-jw-458496 --key hello.txt

## Clean up

aws s3 rm s3://meta-fun-jw-458496/hello.txt
aws s3 rb s3://meta-fun-jw-458496