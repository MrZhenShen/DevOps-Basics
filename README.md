# DevOpsTasks

## Task 1
1) Execute `vagrant up` in `task1/` folder
2) Open `localhost:8888` in browser

## Task 2
1) Execute `vagrant up` in `task2/` folder
2) Execute `vagrant ssh centos` and `vagrant ssh ubuntu` in two different terminals

## Task 3
1) Execute `vagrant up` in `task3/` folder
2) Execute `vagrant ssh ubuntu`
3) Execute `sudo -i`
4) Execute `tail -f /var/log/sysinfo.log`

## Task 4
1) Execute `vagrant up` in `task4/` folder
2) Execute `vagrant ssh ubuntu`

*Useful commands*

* `su [adminuser | poweruser]`
* `ls -l softlink`
* `id`
* `whoami`
* `cd /home/adminuser` - by poweruser

## Task 5
1) Execute `vagrant up` in `task5/` folder
2) Execute `vagrant ssh`
3) Execute `touch folder1/file` to create file in folder1
4) Execute `ls [folder1 | folder2]`

## Task 6
1) Execute `vagrant up` in `task6/` folder
2) Execute `vagrant ssh`

* `lsblk`
* `pvscan` - list of physical disks with it's Volume Group
* `lvscan`
* `mount` - mounted toms
* `df -h`

## Task 7
* R_PORT (Remote Port)
* L_PORT (Local Port)
* SERVER

### Commands
* `ssh -A -p [R_PORT] [SERVER]` - enter to the vm via port
* `ssh -A -D8899 -p [R_PORT] [SERVER]` - local port forwarding
* `ssh -R 1[R_PORT]:localhost:[L_PORT] -p [R_PORT] [SERVER]` - remote port forwarding
* `bmon` - package trafic
* Open in browser `[SERVER without domain]:1[R_PORT]` to see localhost content from remote

### Links
* [Get IP](https://www.getip.org/)

## Task 8
1) Execute `vagrant up` in `task8/` folder
2) Execute `vagrant ssh`
3) Open the following links:
* [HTTP](http://localhost:8888)
* [HTTPS](https://localhost:8443)