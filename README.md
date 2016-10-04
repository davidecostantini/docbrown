DocBrown - An utility that allow your file to go back in time ;-)

An utility that allow your file to go back in time ;-)
Infrastructure > DocBrown > docbrown.jpg

## DESCRIPTION
==============
This is a new tool to synchronize a folder with AWS S3.
The app is written in Python to interact with AWS it use either a local copy of AWS CLI or a Docker AWS CLI container (also developed by us, please have a look at https://github.com/davidecostantini/awscli)
It will check if AWS CLI and Docker are installed at every run.
To store the log just route the stout to a file.

## SOURCE
==============
LANGUAGE: python
SOURCE CODE: https://github.com/davidecostantini/docbrown

## CONFIG FILE
==============
The config file is a standard JSON, path must be specified as first parameter when you run script.
Here an example:

The three AWS parameters are just AWS credentials to access.
Task is a list of element containing:

* s3bucker => Bucket name where store files (string)
* Path => Path to synchronize (string)
* s3_encrypt => Set if files must be encrypted when uploaded (bool) ############# ACTUALLY NOT IMPLEMENTED #############
* docker_container => Full container name (string) [not mandatory]
* pre_cmd_trigger => Script to execute BEFORE sync process (string) [not mandatory]
* post_cmd_trigger => Script to execute AFTER sync process (string) [not mandatory]

## RUN
To execute the application, once you've filled the config file, just execute this command:
./docbrown config_file

