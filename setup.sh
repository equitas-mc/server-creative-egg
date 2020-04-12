#!/bin/bash

set -e

# For debugging purpose
set -o xtrace

apt update
apt install -y wget sqlite3

./server-egg/module-cuberite-egg/setup.sh

cp server-egg/settings.ini Cuberite/
cp server-egg/webadmin.ini Cuberite/

mkdir -p data/worlds/world
cp server-egg/world.ini data/worlds/world
