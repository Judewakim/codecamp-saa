#Create a new Maven Project
```sh

mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_EAST_1 \
 -DarchetypeVersion=2.26.21 \
 -DgroupId=com.example.myapp \
 -DartifactId=myapp
 ```