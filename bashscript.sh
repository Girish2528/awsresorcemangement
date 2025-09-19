#!/bin/bash


############################
#Author : Girish 

set -ix 
#add to git 
#Version - v1
#
## This script will report aws resorce usage 

#list s3 bucket 
echo "print list of s3 buckets"
aws s3 ls

#list EC2 instance
### added comment for branch divison
## added comment for the merge function  
echo "print list of ec2 instancs"
aws ec2 describe-instances | jq '.Reservations.[].Instances[].InstanceId'

#
#list lambda
#
echo "print list of lamda functions"
aws lambda list-functions

#list IAM users 
echo "print list of IM userss"
aws iam list-users
































