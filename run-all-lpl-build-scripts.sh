#!/bin/bash

for LplScript in $(ls -1 lpl-build*)
do 
  ./$LplScript
done
