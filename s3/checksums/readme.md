## THIS DOES NOT WORK...TRAGEDY

## create a new s3 bucket
```md
aws s3 mb s3://checksums-examples-ab-2343
```

## create a file that will do a checksum on
```
echo "Hello Mars" > myfile.txt
```

## create a checksum of a file for md5
md5sum myfile.txt

# 8ed2d86f12620cdba4c976ff6651637f  myfile.txt
aws s3 cp myfile.txt s3://checksums-examples-ab-2343
aws s3api head-object --bucket checksums-examples-ab-2343 --key myfile.txt

# Lets upload a file with a differnet kind of checksum
```
bundle exec ruby crc.rb
```

```sh
aws s3api put-object \
--bucket="checksums-examples-ab-2343" \
--key="myfilesha1.txt" \
--body="myfile.txt" \
--checksum-algorithm="SHA1" \
--checksum-sha1="c28ccc2c5e214036806014df9fb43634f3e770b2"
```

