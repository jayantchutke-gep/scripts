#! /bin/bash

## Prepared by Jayant Chutke
## this file will process input.csv which should contain rg,vm name in csv format

### update the scripts to run ###


SCRIPTS="sudo ssh -V"

while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4
do
  echo "Resource Group : $rec_column1"
  echo "Hostname : $rec_column2"


/usr/bin/az vm run-command invoke -g ${rec_column1} -n  ${rec_column2}   --command-id RunShellScript --scripts "$SCRIPTS"
done < <(tail -n +2 input.csv)
