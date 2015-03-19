DocBrown - An utility that allow your file to go back in time ;-)

An utility that allow your file to go back in time ;-)
Infrastructure > DocBrown > docbrown.jpg

## DESCRIPTION
==============
This is a new tool to synchronize a folder with AWS S3.
The app is written in Python and is can work with a local copy of AWS or a Docker AWS CLI container (also developed by us, please have a look to the corresponding section in Confluence)
It will check if AWS CLI and Docker are installed at every run.
To store the log just route the stout to a file on crontab.

## SOURCE
==============
LANGUAGE: python
SOURCE CODE: https://github.com/infomentum/docbrown

## CONFIG FILE
==============
The config file is a standard JSON, path must be specified as first parameter when you run script.
Here an example:

![DocBrown L](http://mentalfloss.com/sites/default/files/styles/article_640x430/public/marty-doc_12.jpg "Doc Brown")

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
./s3sync.py <config_path>

