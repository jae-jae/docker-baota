#!/bin/bash
echo 'starting....'
cd /www/server/panel
nohup python main.pyc `cat data/port.pl` > /tmp/panelBoot.pl 2>&1 &

python task.pyc > /tmp/panelTask.pl 2>&1
