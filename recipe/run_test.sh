#!/bin/bash

## import test
${R} -e "library('RMariaDB')"

## testthat tests
cp ${RECIPE_DIR}/test.cnf ~/.my.cnf
$R -e "testthat::test_file('tests/testthat.R', stop_on_failure=TRUE)"
