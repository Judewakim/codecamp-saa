# This script creates an S3 bucket and uploads a random number of files to it.
# It uses the AWS SDK for S3, SecureRandom module to generate unique file contents,
# and Pry for debugging purposes.

require 'aws-sdk-s3'     # AWS SDK for S3 to interact with S3 services
require 'pry'            # Pry for debugging
require 'securerandom'   # SecureRandom to generate unique UUIDs for file contents

# Fetch the bucket name from environment variables
bucket_name = ENV['BUCKET_NAME']
region = 'us-east-1'  # Set the region where the bucket will be created

# Initialize the S3 client
client = Aws::S3::Client.new

# Create the S3 bucket
resp = client.create_bucket({
  bucket: bucket_name,
#   create_bucket_configuration: {
#     location_constraint: region
#   }
})
# binding.pry

# Generate a random number of files between 1 and 6
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"

# Loop through the number of files to be created and uploaded
number_of_files.times.each do |i|
  puts "i: #{i}"
  filename = "file_#{i}.txt"         # Define the filename
  output_path = "/tmp/#{filename}"    # Define the local output path

  # Create and write unique content to the file
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Read the file and upload it to S3
  File.open(output_path, 'rb') do |file|
    client.put_object(
      bucket: bucket_name,
      key: filename,
      body: file
    )
  end
end
#binding.pry