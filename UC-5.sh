#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numOfworkingDays=20

for(( day=1; day<=$numOfworkingDays; day++ ))
do
     randomcheck=$((RANDOM%3))
                case $randomcheck in
                        $isPartTime)
                              empHrs=4
                             ;;
                       $isFullTime)
                               empHrs=8
                              ;;
                        *)
                            empHrs=0
                             ;;
                esac
               salary=$(($empHrs*$empRatePerHr))
                TotalSalary=$(($TotalSalary+$salary))
done
