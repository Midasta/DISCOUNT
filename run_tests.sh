#!/bin/sh
set -e
cd tests
fpc test_bonus.pas
./test_bonus
