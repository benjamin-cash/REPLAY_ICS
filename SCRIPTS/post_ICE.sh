#!/bin/bash
set -xu
dtg=${1}
topoutdir=${2}
dir=${topoutdir}/${dtg}/mem000/ice
mkdir -p ${dir} && cd ${dir}

echo "EDITING CICE data in ${dir}"
file=${DTG_TEXT}.cice_model.res.nc
python ${SCRIPT_DIR}/CICE_ic_edit.py -f ${file} -o ${PWD}
new_file=$(ls new*nc)
mv ${new_file} ${PWD}/${file}
